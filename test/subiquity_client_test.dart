import 'dart:io';

import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';
import 'package:test/test.dart';

// ignore_for_file: type=lint

void main() {
  late SubiquityServer testServer;
  late SubiquityClient client;

  test('initialization', () async {
    client = SubiquityClient();
    final isOpen = client.isOpen;
    final address = Endpoint.unix('');
    Future.delayed(Duration(milliseconds: 1)).then((_) => client.open(address));
    await expectLater(isOpen, completes);
    expect(await isOpen, isTrue);
  });

  group('subiquity process', () {
    test('set additional environment before starting the process', () async {
      const foo = '42';
      final env = {'TEST_VAR': foo};
      final process = SubiquityProcess.command(
        'bash',
        ['-c', 'exit \$TEST_VAR'],
      );
      await process.start(additionalEnv: env);
      addTearDown(process.stop);
      expect(await process.exitCode, int.parse(foo));
    });

    test('call back on process start', () async {
      bool cbCalled = false;
      final process = SubiquityProcess(
        'bash',
        ['-c', 'exit 0'],
        onProcessStart: () async => cbCalled = true,
      );
      await process.start();
      addTearDown(process.stop);
      expect(cbCalled, isTrue);
    });

    test('defer launch', () async {
      final fut = Future.delayed(const Duration(milliseconds: 50));
      bool futAwaited = false;
      final process = SubiquityProcess('bash', ['-c', 'exit 0'],
          deferStart: fut.then((_) => futAwaited = true));
      await process.start();
      addTearDown(process.stop);
      expect(futAwaited, isTrue);
    });
  });

  group('subiquity', () {
    setUpAll(() async {
      final subiquityPath = await getSubiquityPath();
      final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
      final process = SubiquityProcess.python(
        'subiquity.cmd.server',
        serverMode: ServerMode.DRY_RUN,
        subiquityPath: subiquityPath,
      );
      testServer = SubiquityServer(
        process: process,
        endpoint: endpoint,
      );
      client = SubiquityClient();
      final socketPath = await testServer.start(args: [
        '--machine-config',
        'examples/simple.json',
        '--source-catalog',
        '${Directory.current.path}/test/install-sources.yaml',
        '--bootloader',
        'uefi',
      ]);
      client.open(socketPath);
    });

    tearDownAll(() async {
      await client.close();
      await testServer.stop();
    });

    test('variant', () async {
      await client.setVariant(Variant.SERVER);
      expect(await client.variant(), equals(Variant.SERVER));

      await client.setVariant(Variant.DESKTOP);
      expect(await client.variant(), equals(Variant.DESKTOP));
    });

    test('source', () async {
      final expected = SourceSelectionAndSetting(sources: <SourceSelection>[
        SourceSelection(
            id: 'ubuntu-desktop',
            name: 'Ubuntu Desktop',
            description: 'Standard Ubuntu Desktop image',
            size: 10,
            variant: 'desktop',
            isDefault: true),
        SourceSelection(
            id: 'ubuntu-desktop-minimal',
            name: 'Ubuntu Desktop (minimized)',
            description: 'Minimized Ubuntu Desktop image',
            size: 5,
            variant: 'desktop',
            isDefault: false)
      ], currentId: 'ubuntu-desktop', searchDrivers: false);

      await client.setVariant(Variant.DESKTOP);
      var actual = await client.source();
      expect(actual.sources, unorderedEquals(expected.sources));

      await client.setSource('ubuntu-desktop-minimal');
      actual = await client.source();
      expect(actual.currentId, 'ubuntu-desktop-minimal');

      await client.setSource('ubuntu-desktop');
      actual = await client.source();
      expect(actual.currentId, 'ubuntu-desktop');
    });

    test('locale', () async {
      await client.setLocale('en_US.UTF-8');
      expect(await client.locale(), 'en_US.UTF-8');
    });

    test('keyboard', () async {
      var ks = KeyboardSetting(
        layout: 'us',
        variant: '',
        toggle: null,
      );

      await client.setKeyboard(ks);

      var kb = await client.keyboard();
      expect(kb.setting.layout, 'us');
      expect(kb.setting.variant, '');
      expect(kb.setting.toggle, null);
      expect(kb.layouts, isNotEmpty);
    });

    test('input source', () async {
      const ks = KeyboardSetting(layout: 'fr', variant: 'latin9');
      await expectLater(client.setInputSource(ks), completes);
    });

    test('has rst', () async {
      var rst = await client.hasRst();
      expect(rst, isFalse);
    });

    test('has bitlocker', () async {
      var bitLocker = await client.hasBitLocker();
      expect(bitLocker, isFalse);
    });

    test('guided storage v2', () async {
      final guided = await client.getGuidedStorageV2();
      expect(guided.possible, isNotEmpty);

      final choice = GuidedChoiceV2(target: guided.possible.last);
      final response = await client.setGuidedStorageV2(choice);
      expect(response.configured, isNotNull);
      expect(response.possible, isNotEmpty);
    });

    test('get storage v2', () async {
      final response = await client.getStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('get original storage v2', () async {
      final response = await client.getOriginalStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('set storage v2', () async {
      final response = await client.setStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('reset storage v2', () async {
      final response = await client.resetStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('add/edit/delete partition v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));

      // add
      var response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        Partition(mount: '/foo', format: 'ext2'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final added = response.disks.last.partitions.whereType<Partition>();
      expect(added, isNotEmpty);

      expect(added.last.mount, equals('/foo'));
      expect(added.last.format, equals('ext2'));

      // edit
      response = await client.editPartitionV2(
        disks.first,
        added.last.copyWith(mount: '/bar', format: 'ext3'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final edited = response.disks.last.partitions.whereType<Partition>();
      expect(edited, hasLength(added.length));

      expect(edited.last.mount, equals('/bar'));
      expect(edited.last.format, equals('ext3'));

      // delete
      response = await client.deletePartitionV2(
        disks.first,
        edited.last,
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final deleted = response.disks.last.partitions.whereType<Partition>();
      expect(deleted, hasLength(added.length - 1));
    });

    test('add swap', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));

      // add
      var response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        Partition(format: 'swap'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final added = response.disks.last.partitions.whereType<Partition>();
      expect(added, isNotEmpty);

      expect(added.last.mount, anyOf(isNull, isEmpty));
      expect(added.last.format, equals('swap'));
    });

    test('add boot partition v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      final response = await client.addBootPartitionV2(disks.first);
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final partitions = response.disks.first.partitions.whereType<Partition>();
      expect(partitions, isNotEmpty);

      expect(partitions.last.grubDevice, isNotNull);
      expect(partitions.last.grubDevice, isTrue);
    });

    test('reformat disk v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));
      expect(disks.first.partitions.whereType<Partition>(), isEmpty);

      var response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        Partition(mount: '/foo', format: 'ext2'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      expect(response.disks.first.partitions, isNotEmpty);

      response = await client.reformatDiskV2(disks.first);

      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final partitions = response.disks.first.partitions.whereType<Partition>();
      expect(partitions, isEmpty);
    });

    test('gap', () async {
      final storage = await client.getStorageV2();
      expect(storage.disks, isNotEmpty);

      final gaps = storage.disks.first.partitions.whereType<Gap>();
      expect(gaps, hasLength(1));

      expect(gaps.single.offset, isNonZero);
      expect(gaps.single.size, isNonZero);
    });

    test('needs root/boot', () async {
      final response = await client.getStorageV2();
      expect(response.needRoot, isNotNull);
      expect(response.needBoot, isNotNull);
    });

    test('proxy', () async {
      await client.setProxy('test');
      expect(await client.proxy(), 'test');
      await client.setProxy('');
      expect(await client.proxy(), '');
    });

    test('mirror', () async {
      await client.setMirror('test');
      expect(await client.mirror(), endsWith('test'));
      await client.setMirror('archive.ubuntu.com/ubuntu');
      expect(await client.mirror(), endsWith('archive.ubuntu.com/ubuntu'));
    });

    test('identity', () async {
      var newId = IdentityData(
        realname: 'übuntù', // utf-8
        username: 'ubuntu',
        cryptedPassword:
            r'$6$exDY1mhS4KUYCE/2$zmn9ToZwTKLhCw.b4/b.ZRTIZM30JZ4QrOQ2aOXJ8yk96xpcCof0kxKwuX1kqLG/ygbJ1f8wxED22bTL4F46P0',
        hostname: 'ubuntu-desktop',
      );

      await client.setIdentity(newId);

      var id = await client.identity();
      expect(id.realname, 'übuntù');
      expect(id.username, 'ubuntu');
      expect(id.cryptedPassword, '');
      expect(id.hostname, 'ubuntu-desktop');

      // empty defaults for null values
      newId = IdentityData();

      // Server now throws exception if invalid username is POST'ed.
      expect(() async {
        await client.setIdentity(newId);
      }, throwsException);
    });

    test('identity/validate_username', () async {
      const valid = 'ubuntu';
      const alreadyUsed = 'root';
      const systemReserved = 'plugdev';
      final String tooLong = 'u' * 33;
      const invalidChars = '123root';

      var validation = await client.validateUsername(valid);
      expect(validation, UsernameValidation.OK);

      validation = await client.validateUsername(alreadyUsed);
      expect(validation, UsernameValidation.ALREADY_IN_USE);

      validation = await client.validateUsername(systemReserved);
      expect(validation, UsernameValidation.SYSTEM_RESERVED);

      validation = await client.validateUsername(tooLong);
      expect(validation, UsernameValidation.TOO_LONG);

      validation = await client.validateUsername(invalidChars);
      expect(validation, UsernameValidation.INVALID_CHARS);
    });

    test('timezone', () async {
      await client.setTimezone('Pacific/Guam');
      var tzdata = await client.timezone();
      expect(tzdata.timezone, 'Pacific/Guam');
      expect(tzdata.fromGeoip, isFalse);

      await client.setTimezone('geoip');
      tzdata = await client.timezone();
      expect(tzdata.timezone, isNotNull);
      expect(tzdata.fromGeoip, isTrue);
    });

    test('status', () async {
      var status = await client.status();
      expect(status.state, ApplicationState.WAITING);
      expect(status.confirmingTty, '');
      expect(status.cloudInitOk, true);
      expect(status.interactive, true);
      expect(status.echoSyslogId, startsWith('subiquity_echo.'));
      expect(status.logSyslogId, startsWith('subiquity_log.'));
      expect(status.eventSyslogId, startsWith('subiquity_event.'));

      // Should not block as the status is currently WAITING
      status = await client.status(current: ApplicationState.RUNNING);
    });

    test('markConfigured', () async {
      await client.markConfigured(['keyboard']);
    });

    test('confirm', () async {
      await client.confirm('1');
    });

    test('keyboard detection steps', () async {
      // This test is trying to avoid making too many assumptions on the test
      // data, but a few steps are assumed to be of certain types to be able to
      // test all three step types.

      // assumes that step 0 is a key press step
      final step0 = await client.getKeyboardStep();
      expect(step0, isA<StepPressKey>());
      final stepPressKey = step0 as StepPressKey;
      expect(stepPressKey.symbols, isNotEmpty);
      expect(stepPressKey.keycodes, isNotEmpty);

      // assumes that step 2 is a result step
      final step2 = await client.getKeyboardStep('2');
      expect(step2, isA<StepResult>());
      final stepResult = step2 as StepResult;
      expect(stepResult.layout, isNotEmpty);
      expect(stepResult.variant, isNotEmpty);

      // assumes that step 3 is a result step
      final step3 = await client.getKeyboardStep('3');
      expect(step3, isA<StepKeyPresent>());
      final stepKeyPresent = step3 as StepKeyPresent;
      expect(stepKeyPresent.symbol, isNotEmpty);
      expect(stepKeyPresent.yes, isNotEmpty);
      expect(stepKeyPresent.no, isNotEmpty);
    });

    test('free_only', () async {
      await client.setFreeOnly(true);
      expect(await client.freeOnly(), true);

      await client.setFreeOnly(false);
      expect(await client.freeOnly(), false);
    });

    test('drivers', () async {
      await client.setDrivers(install: true);
      final response1 = await client.getDrivers();
      expect(response1.install, isTrue);

      await client.setDrivers(install: false);
      final response2 = await client.getDrivers();
      expect(response2.install, isFalse);
    });

    test('codecs', () async {
      await client.setCodecs(install: true);
      final response1 = await client.getCodecs();
      expect(response1.install, isTrue);

      await client.setCodecs(install: false);
      final response2 = await client.getCodecs();
      expect(response2.install, isFalse);
    });

    test('refresh', () async {
      final status = await client.checkRefresh(wait: true);
      expect(status.availability, isNot(RefreshCheckState.UNKNOWN));

      final id = await client.startRefresh();
      expect(id, isNotEmpty);

      final change = await client.getRefreshProgress(id);
      expect(change.status, isNot(TaskStatus.ERROR));
      expect(change.tasks, isNotEmpty);
      expect(change.ready, isFalse);
      expect(change.err, isNull);
    });
  });

  group('wsl', () {
    setUpAll(() async {
      final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
      final subiquityPath = await getSubiquityPath();
      final process = SubiquityProcess.python(
        'system_setup.cmd.server',
        serverMode: ServerMode.DRY_RUN,
        subiquityPath: subiquityPath,
      );
      testServer = SubiquityServer(
        process: process,
        endpoint: endpoint,
      );
      client = SubiquityClient();
      final socketPath = await testServer.start();
      client.open(socketPath);
    });

    tearDownAll(() async {
      await client.close();
      await testServer.stop();
    });

    test('variant', () async {
      await client.setVariant(Variant.WSL_SETUP);
      expect(await client.variant(), equals(Variant.WSL_SETUP));

      await client.setVariant(Variant.WSL_CONFIGURATION);
      expect(await client.variant(), equals(Variant.WSL_CONFIGURATION));
    });

    test('wslsetupoptions', () async {
      var newConf = WSLSetupOptions(
        installLanguageSupportPackages: false,
      );

      await client.setWslSetupOptions(newConf);

      var conf = await client.wslSetupOptions();
      expect(conf.installLanguageSupportPackages, false);

      newConf = WSLSetupOptions(
        installLanguageSupportPackages: true,
      );

      await client.setWslSetupOptions(newConf);

      conf = await client.wslSetupOptions();
      expect(conf.installLanguageSupportPackages, true);
    });

    test('wslconfbase', () async {
      var newConf = WSLConfigurationBase(
        automountRoot: '/mnt/',
        automountOptions: '-f',
        networkGeneratehosts: false,
        networkGenerateresolvconf: false,
      );

      await client.setWslConfigurationBase(newConf);

      var conf = await client.wslConfigurationBase();
      expect(conf.automountRoot, '/mnt/');
      expect(conf.automountOptions, '-f');
      expect(conf.networkGeneratehosts, false);
      expect(conf.networkGenerateresolvconf, false);

      newConf = WSLConfigurationBase(
        automountRoot: '',
        automountOptions: '',
        networkGeneratehosts: true,
        networkGenerateresolvconf: true,
      );

      await client.setWslConfigurationBase(newConf);

      conf = await client.wslConfigurationBase();
      expect(conf.automountRoot, '');
      expect(conf.automountOptions, '');
      expect(conf.networkGeneratehosts, true);
      expect(conf.networkGenerateresolvconf, true);
    });

    test('wslconfadvanced', () async {
      var newConf = WSLConfigurationAdvanced(
        automountEnabled: true,
        automountMountfstab: true,
        interopEnabled: true,
        interopAppendwindowspath: true,
        systemdEnabled: false,
      );

      await client.setWslConfigurationAdvanced(newConf);

      var conf = await client.wslConfigurationAdvanced();
      expect(conf.automountEnabled, true);
      expect(conf.automountMountfstab, true);
      expect(conf.interopEnabled, true);
      expect(conf.interopAppendwindowspath, true);
      expect(conf.systemdEnabled, false);

      newConf = WSLConfigurationAdvanced(
        automountEnabled: false,
        automountMountfstab: false,
        interopEnabled: false,
        interopAppendwindowspath: false,
        systemdEnabled: true,
      );

      await client.setWslConfigurationAdvanced(newConf);

      conf = await client.wslConfigurationAdvanced();
      expect(conf.automountEnabled, false);
      expect(conf.automountMountfstab, false);
      expect(conf.interopEnabled, false);
      expect(conf.interopAppendwindowspath, false);
      expect(conf.systemdEnabled, true);
    });
  });
}