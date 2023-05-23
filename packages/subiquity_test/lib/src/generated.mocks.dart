// Mocks generated by Mockito 5.3.2 from annotations
// in subiquity_test/src/generated.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:subiquity_client/src/client.dart' as _i4;
import 'package:subiquity_client/src/endpoint.dart' as _i3;
import 'package:subiquity_client/src/server.dart' as _i6;
import 'package:subiquity_client/src/server/process.dart' as _i7;
import 'package:subiquity_client/src/status_monitor.dart' as _i8;
import 'package:subiquity_client/src/types.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSourceSelectionAndSetting_0 extends _i1.SmartFake
    implements _i2.SourceSelectionAndSetting {
  _FakeSourceSelectionAndSetting_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeKeyboardSetup_1 extends _i1.SmartFake implements _i2.KeyboardSetup {
  _FakeKeyboardSetup_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMirrorGet_2 extends _i1.SmartFake implements _i2.MirrorGet {
  _FakeMirrorGet_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIdentityData_3 extends _i1.SmartFake implements _i2.IdentityData {
  _FakeIdentityData_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTimeZoneInfo_4 extends _i1.SmartFake implements _i2.TimeZoneInfo {
  _FakeTimeZoneInfo_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApplicationStatus_5 extends _i1.SmartFake
    implements _i2.ApplicationStatus {
  _FakeApplicationStatus_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGuidedStorageResponseV2_6 extends _i1.SmartFake
    implements _i2.GuidedStorageResponseV2 {
  _FakeGuidedStorageResponseV2_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStorageResponseV2_7 extends _i1.SmartFake
    implements _i2.StorageResponseV2 {
  _FakeStorageResponseV2_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWSLSetupOptions_8 extends _i1.SmartFake
    implements _i2.WSLSetupOptions {
  _FakeWSLSetupOptions_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWSLConfigurationBase_9 extends _i1.SmartFake
    implements _i2.WSLConfigurationBase {
  _FakeWSLConfigurationBase_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWSLConfigurationAdvanced_10 extends _i1.SmartFake
    implements _i2.WSLConfigurationAdvanced {
  _FakeWSLConfigurationAdvanced_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAnyStep_11 extends _i1.SmartFake implements _i2.AnyStep {
  _FakeAnyStep_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDriversResponse_12 extends _i1.SmartFake
    implements _i2.DriversResponse {
  _FakeDriversResponse_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCodecsData_13 extends _i1.SmartFake implements _i2.CodecsData {
  _FakeCodecsData_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRefreshStatus_14 extends _i1.SmartFake implements _i2.RefreshStatus {
  _FakeRefreshStatus_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChange_15 extends _i1.SmartFake implements _i2.Change {
  _FakeChange_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAdConnectionInfo_16 extends _i1.SmartFake
    implements _i2.AdConnectionInfo {
  _FakeAdConnectionInfo_16(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEndpoint_17 extends _i1.SmartFake implements _i3.Endpoint {
  _FakeEndpoint_17(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SubiquityClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubiquityClient extends _i1.Mock implements _i4.SubiquityClient {
  MockSubiquityClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void open(_i3.Endpoint? endpoint) => super.noSuchMethod(
        Invocation.method(
          #open,
          [endpoint],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i4.Variant> getVariant() => (super.noSuchMethod(
        Invocation.method(
          #getVariant,
          [],
        ),
        returnValue: _i5.Future<_i4.Variant>.value(_i4.Variant.SERVER),
      ) as _i5.Future<_i4.Variant>);
  @override
  _i5.Future<void> setVariant(_i4.Variant? variant) => (super.noSuchMethod(
        Invocation.method(
          #setVariant,
          [variant],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.SourceSelectionAndSetting> getSource() => (super.noSuchMethod(
        Invocation.method(
          #getSource,
          [],
        ),
        returnValue: _i5.Future<_i2.SourceSelectionAndSetting>.value(
            _FakeSourceSelectionAndSetting_0(
          this,
          Invocation.method(
            #getSource,
            [],
          ),
        )),
      ) as _i5.Future<_i2.SourceSelectionAndSetting>);
  @override
  _i5.Future<void> setSource(String? sourceId) => (super.noSuchMethod(
        Invocation.method(
          #setSource,
          [sourceId],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String> getLocale() => (super.noSuchMethod(
        Invocation.method(
          #getLocale,
          [],
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<void> setLocale(String? locale) => (super.noSuchMethod(
        Invocation.method(
          #setLocale,
          [locale],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.KeyboardSetup> getKeyboard() => (super.noSuchMethod(
        Invocation.method(
          #getKeyboard,
          [],
        ),
        returnValue: _i5.Future<_i2.KeyboardSetup>.value(_FakeKeyboardSetup_1(
          this,
          Invocation.method(
            #getKeyboard,
            [],
          ),
        )),
      ) as _i5.Future<_i2.KeyboardSetup>);
  @override
  _i5.Future<void> setKeyboard(_i2.KeyboardSetting? setting) =>
      (super.noSuchMethod(
        Invocation.method(
          #setKeyboard,
          [setting],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> setInputSource(
    _i2.KeyboardSetting? setting, {
    String? user,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInputSource,
          [setting],
          {#user: user},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String> getProxy() => (super.noSuchMethod(
        Invocation.method(
          #getProxy,
          [],
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<void> setProxy(String? proxy) => (super.noSuchMethod(
        Invocation.method(
          #setProxy,
          [proxy],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.MirrorGet> getMirror() => (super.noSuchMethod(
        Invocation.method(
          #getMirror,
          [],
        ),
        returnValue: _i5.Future<_i2.MirrorGet>.value(_FakeMirrorGet_2(
          this,
          Invocation.method(
            #getMirror,
            [],
          ),
        )),
      ) as _i5.Future<_i2.MirrorGet>);
  @override
  _i5.Future<_i2.MirrorPostResponse> setMirror(_i2.MirrorPost? mirror) =>
      (super.noSuchMethod(
        Invocation.method(
          #setMirror,
          [mirror],
        ),
        returnValue:
            _i5.Future<_i2.MirrorPostResponse>.value(_i2.MirrorPostResponse.OK),
      ) as _i5.Future<_i2.MirrorPostResponse>);
  @override
  _i5.Future<bool> hasNetwork() => (super.noSuchMethod(
        Invocation.method(
          #hasNetwork,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.IdentityData> getIdentity() => (super.noSuchMethod(
        Invocation.method(
          #getIdentity,
          [],
        ),
        returnValue: _i5.Future<_i2.IdentityData>.value(_FakeIdentityData_3(
          this,
          Invocation.method(
            #getIdentity,
            [],
          ),
        )),
      ) as _i5.Future<_i2.IdentityData>);
  @override
  _i5.Future<void> setIdentity(_i2.IdentityData? identity) =>
      (super.noSuchMethod(
        Invocation.method(
          #setIdentity,
          [identity],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.UsernameValidation> validateUsername(String? username) =>
      (super.noSuchMethod(
        Invocation.method(
          #validateUsername,
          [username],
        ),
        returnValue:
            _i5.Future<_i2.UsernameValidation>.value(_i2.UsernameValidation.OK),
      ) as _i5.Future<_i2.UsernameValidation>);
  @override
  _i5.Future<_i2.TimeZoneInfo> getTimezone() => (super.noSuchMethod(
        Invocation.method(
          #getTimezone,
          [],
        ),
        returnValue: _i5.Future<_i2.TimeZoneInfo>.value(_FakeTimeZoneInfo_4(
          this,
          Invocation.method(
            #getTimezone,
            [],
          ),
        )),
      ) as _i5.Future<_i2.TimeZoneInfo>);
  @override
  _i5.Future<void> setTimezone(String? timezone) => (super.noSuchMethod(
        Invocation.method(
          #setTimezone,
          [timezone],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.ApplicationStatus> getStatus(
          {_i2.ApplicationState? current}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStatus,
          [],
          {#current: current},
        ),
        returnValue:
            _i5.Future<_i2.ApplicationStatus>.value(_FakeApplicationStatus_5(
          this,
          Invocation.method(
            #getStatus,
            [],
            {#current: current},
          ),
        )),
      ) as _i5.Future<_i2.ApplicationStatus>);
  @override
  _i5.Stream<_i2.ApplicationStatus?> monitorStatus() => (super.noSuchMethod(
        Invocation.method(
          #monitorStatus,
          [],
        ),
        returnValue: _i5.Stream<_i2.ApplicationStatus?>.empty(),
      ) as _i5.Stream<_i2.ApplicationStatus?>);
  @override
  _i5.Future<void> markConfigured(List<String>? endpointNames) =>
      (super.noSuchMethod(
        Invocation.method(
          #markConfigured,
          [endpointNames],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> confirm(String? tty) => (super.noSuchMethod(
        Invocation.method(
          #confirm,
          [tty],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<bool> hasRst() => (super.noSuchMethod(
        Invocation.method(
          #hasRst,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<bool> hasBitLocker() => (super.noSuchMethod(
        Invocation.method(
          #hasBitLocker,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.GuidedStorageResponseV2> getGuidedStorageV2(
          {bool? wait = true}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGuidedStorageV2,
          [],
          {#wait: wait},
        ),
        returnValue: _i5.Future<_i2.GuidedStorageResponseV2>.value(
            _FakeGuidedStorageResponseV2_6(
          this,
          Invocation.method(
            #getGuidedStorageV2,
            [],
            {#wait: wait},
          ),
        )),
      ) as _i5.Future<_i2.GuidedStorageResponseV2>);
  @override
  _i5.Future<_i2.GuidedStorageResponseV2> setGuidedStorageV2(
          _i2.GuidedChoiceV2? choice) =>
      (super.noSuchMethod(
        Invocation.method(
          #setGuidedStorageV2,
          [choice],
        ),
        returnValue: _i5.Future<_i2.GuidedStorageResponseV2>.value(
            _FakeGuidedStorageResponseV2_6(
          this,
          Invocation.method(
            #setGuidedStorageV2,
            [choice],
          ),
        )),
      ) as _i5.Future<_i2.GuidedStorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> getOriginalStorageV2() =>
      (super.noSuchMethod(
        Invocation.method(
          #getOriginalStorageV2,
          [],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #getOriginalStorageV2,
            [],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> getStorageV2({bool? wait = true}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStorageV2,
          [],
          {#wait: wait},
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #getStorageV2,
            [],
            {#wait: wait},
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> setStorageV2() => (super.noSuchMethod(
        Invocation.method(
          #setStorageV2,
          [],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #setStorageV2,
            [],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> resetStorageV2() => (super.noSuchMethod(
        Invocation.method(
          #resetStorageV2,
          [],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #resetStorageV2,
            [],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> addPartitionV2(
    _i2.Disk? disk,
    _i2.Gap? gap,
    _i2.Partition? partition,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addPartitionV2,
          [
            disk,
            gap,
            partition,
          ],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #addPartitionV2,
            [
              disk,
              gap,
              partition,
            ],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> editPartitionV2(
    _i2.Disk? disk,
    _i2.Partition? partition,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editPartitionV2,
          [
            disk,
            partition,
          ],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #editPartitionV2,
            [
              disk,
              partition,
            ],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> deletePartitionV2(
    _i2.Disk? disk,
    _i2.Partition? partition,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deletePartitionV2,
          [
            disk,
            partition,
          ],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #deletePartitionV2,
            [
              disk,
              partition,
            ],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> addBootPartitionV2(_i2.Disk? disk) =>
      (super.noSuchMethod(
        Invocation.method(
          #addBootPartitionV2,
          [disk],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #addBootPartitionV2,
            [disk],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<_i2.StorageResponseV2> reformatDiskV2(_i2.Disk? disk) =>
      (super.noSuchMethod(
        Invocation.method(
          #reformatDiskV2,
          [disk],
        ),
        returnValue:
            _i5.Future<_i2.StorageResponseV2>.value(_FakeStorageResponseV2_7(
          this,
          Invocation.method(
            #reformatDiskV2,
            [disk],
          ),
        )),
      ) as _i5.Future<_i2.StorageResponseV2>);
  @override
  _i5.Future<void> reboot({bool? immediate = false}) => (super.noSuchMethod(
        Invocation.method(
          #reboot,
          [],
          {#immediate: immediate},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> shutdown({bool? immediate = false}) => (super.noSuchMethod(
        Invocation.method(
          #shutdown,
          [],
          {#immediate: immediate},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.WSLSetupOptions> wslSetupOptions() => (super.noSuchMethod(
        Invocation.method(
          #wslSetupOptions,
          [],
        ),
        returnValue:
            _i5.Future<_i2.WSLSetupOptions>.value(_FakeWSLSetupOptions_8(
          this,
          Invocation.method(
            #wslSetupOptions,
            [],
          ),
        )),
      ) as _i5.Future<_i2.WSLSetupOptions>);
  @override
  _i5.Future<void> setWslSetupOptions(_i2.WSLSetupOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #setWslSetupOptions,
          [options],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.WSLConfigurationBase> wslConfigurationBase() =>
      (super.noSuchMethod(
        Invocation.method(
          #wslConfigurationBase,
          [],
        ),
        returnValue: _i5.Future<_i2.WSLConfigurationBase>.value(
            _FakeWSLConfigurationBase_9(
          this,
          Invocation.method(
            #wslConfigurationBase,
            [],
          ),
        )),
      ) as _i5.Future<_i2.WSLConfigurationBase>);
  @override
  _i5.Future<void> setWslConfigurationBase(_i2.WSLConfigurationBase? conf) =>
      (super.noSuchMethod(
        Invocation.method(
          #setWslConfigurationBase,
          [conf],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.WSLConfigurationAdvanced> wslConfigurationAdvanced() =>
      (super.noSuchMethod(
        Invocation.method(
          #wslConfigurationAdvanced,
          [],
        ),
        returnValue: _i5.Future<_i2.WSLConfigurationAdvanced>.value(
            _FakeWSLConfigurationAdvanced_10(
          this,
          Invocation.method(
            #wslConfigurationAdvanced,
            [],
          ),
        )),
      ) as _i5.Future<_i2.WSLConfigurationAdvanced>);
  @override
  _i5.Future<void> setWslConfigurationAdvanced(
          _i2.WSLConfigurationAdvanced? conf) =>
      (super.noSuchMethod(
        Invocation.method(
          #setWslConfigurationAdvanced,
          [conf],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.AnyStep> getKeyboardStep([String? step = r'0']) =>
      (super.noSuchMethod(
        Invocation.method(
          #getKeyboardStep,
          [step],
        ),
        returnValue: _i5.Future<_i2.AnyStep>.value(_FakeAnyStep_11(
          this,
          Invocation.method(
            #getKeyboardStep,
            [step],
          ),
        )),
      ) as _i5.Future<_i2.AnyStep>);
  @override
  _i5.Future<_i2.DriversResponse> getDrivers() => (super.noSuchMethod(
        Invocation.method(
          #getDrivers,
          [],
        ),
        returnValue:
            _i5.Future<_i2.DriversResponse>.value(_FakeDriversResponse_12(
          this,
          Invocation.method(
            #getDrivers,
            [],
          ),
        )),
      ) as _i5.Future<_i2.DriversResponse>);
  @override
  _i5.Future<void> setDrivers({required bool? install}) => (super.noSuchMethod(
        Invocation.method(
          #setDrivers,
          [],
          {#install: install},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.CodecsData> getCodecs() => (super.noSuchMethod(
        Invocation.method(
          #getCodecs,
          [],
        ),
        returnValue: _i5.Future<_i2.CodecsData>.value(_FakeCodecsData_13(
          this,
          Invocation.method(
            #getCodecs,
            [],
          ),
        )),
      ) as _i5.Future<_i2.CodecsData>);
  @override
  _i5.Future<void> setCodecs({required bool? install}) => (super.noSuchMethod(
        Invocation.method(
          #setCodecs,
          [],
          {#install: install},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.RefreshStatus> checkRefresh({bool? wait = true}) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkRefresh,
          [],
          {#wait: wait},
        ),
        returnValue: _i5.Future<_i2.RefreshStatus>.value(_FakeRefreshStatus_14(
          this,
          Invocation.method(
            #checkRefresh,
            [],
            {#wait: wait},
          ),
        )),
      ) as _i5.Future<_i2.RefreshStatus>);
  @override
  _i5.Future<String> startRefresh() => (super.noSuchMethod(
        Invocation.method(
          #startRefresh,
          [],
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<_i2.Change> getRefreshProgress(String? changeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRefreshProgress,
          [changeId],
        ),
        returnValue: _i5.Future<_i2.Change>.value(_FakeChange_15(
          this,
          Invocation.method(
            #getRefreshProgress,
            [changeId],
          ),
        )),
      ) as _i5.Future<_i2.Change>);
  @override
  _i5.Future<bool> hasActiveDirectorySupport() => (super.noSuchMethod(
        Invocation.method(
          #hasActiveDirectorySupport,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.AdConnectionInfo> getActiveDirectory() => (super.noSuchMethod(
        Invocation.method(
          #getActiveDirectory,
          [],
        ),
        returnValue:
            _i5.Future<_i2.AdConnectionInfo>.value(_FakeAdConnectionInfo_16(
          this,
          Invocation.method(
            #getActiveDirectory,
            [],
          ),
        )),
      ) as _i5.Future<_i2.AdConnectionInfo>);
  @override
  _i5.Future<void> setActiveDirectory(_i2.AdConnectionInfo? info) =>
      (super.noSuchMethod(
        Invocation.method(
          #setActiveDirectory,
          [info],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<List<_i2.AdDomainNameValidation>> checkActiveDirectoryDomainName(
          String? domain) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkActiveDirectoryDomainName,
          [domain],
        ),
        returnValue: _i5.Future<List<_i2.AdDomainNameValidation>>.value(
            <_i2.AdDomainNameValidation>[]),
      ) as _i5.Future<List<_i2.AdDomainNameValidation>>);
  @override
  _i5.Future<_i2.AdDomainNameValidation> pingActiveDirectoryDomainController(
          String? domain) =>
      (super.noSuchMethod(
        Invocation.method(
          #pingActiveDirectoryDomainController,
          [domain],
        ),
        returnValue: _i5.Future<_i2.AdDomainNameValidation>.value(
            _i2.AdDomainNameValidation.OK),
      ) as _i5.Future<_i2.AdDomainNameValidation>);
  @override
  _i5.Future<_i2.AdAdminNameValidation> checkActiveDirectoryAdminName(
          String? admin) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkActiveDirectoryAdminName,
          [admin],
        ),
        returnValue: _i5.Future<_i2.AdAdminNameValidation>.value(
            _i2.AdAdminNameValidation.OK),
      ) as _i5.Future<_i2.AdAdminNameValidation>);
  @override
  _i5.Future<_i2.AdPasswordValidation> checkActiveDirectoryPassword(
          String? password) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkActiveDirectoryPassword,
          [password],
        ),
        returnValue: _i5.Future<_i2.AdPasswordValidation>.value(
            _i2.AdPasswordValidation.OK),
      ) as _i5.Future<_i2.AdPasswordValidation>);
  @override
  _i5.Future<_i2.AdJoinResult> getActiveDirectoryJoinResult(
          {bool? wait = true}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getActiveDirectoryJoinResult,
          [],
          {#wait: wait},
        ),
        returnValue: _i5.Future<_i2.AdJoinResult>.value(_i2.AdJoinResult.OK),
      ) as _i5.Future<_i2.AdJoinResult>);
}

/// A class which mocks [SubiquityServer].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubiquityServer extends _i1.Mock implements _i6.SubiquityServer {
  MockSubiquityServer() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set process(_i7.SubiquityProcess? _process) => super.noSuchMethod(
        Invocation.setter(
          #process,
          _process,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Endpoint get endpoint => (super.noSuchMethod(
        Invocation.getter(#endpoint),
        returnValue: _FakeEndpoint_17(
          this,
          Invocation.getter(#endpoint),
        ),
      ) as _i3.Endpoint);
  @override
  _i5.Future<_i3.Endpoint> start({
    List<String>? args,
    Map<String, String>? environment,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #start,
          [],
          {
            #args: args,
            #environment: environment,
          },
        ),
        returnValue: _i5.Future<_i3.Endpoint>.value(_FakeEndpoint_17(
          this,
          Invocation.method(
            #start,
            [],
            {
              #args: args,
              #environment: environment,
            },
          ),
        )),
      ) as _i5.Future<_i3.Endpoint>);
  @override
  _i5.Future<void> stop() => (super.noSuchMethod(
        Invocation.method(
          #stop,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [SubiquityStatusMonitor].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubiquityStatusMonitor extends _i1.Mock
    implements _i8.SubiquityStatusMonitor {
  MockSubiquityStatusMonitor() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Stream<_i2.ApplicationStatus?> get onStatusChanged => (super.noSuchMethod(
        Invocation.getter(#onStatusChanged),
        returnValue: _i5.Stream<_i2.ApplicationStatus?>.empty(),
      ) as _i5.Stream<_i2.ApplicationStatus?>);
  @override
  _i5.Future<bool> start(_i3.Endpoint? endpoint) => (super.noSuchMethod(
        Invocation.method(
          #start,
          [endpoint],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<void> stop() => (super.noSuchMethod(
        Invocation.method(
          #stop,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
