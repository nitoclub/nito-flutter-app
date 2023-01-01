import 'package:flutter_test/flutter_test.dart';
import 'package:feature_frontend_setting/feature_frontend_setting.dart';
import 'package:feature_frontend_setting/feature_frontend_setting_platform_interface.dart';
import 'package:feature_frontend_setting/feature_frontend_setting_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFeatureFrontendSettingPlatform
    with MockPlatformInterfaceMixin
    implements FeatureFrontendSettingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FeatureFrontendSettingPlatform initialPlatform = FeatureFrontendSettingPlatform.instance;

  test('$MethodChannelFeatureFrontendSetting is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFeatureFrontendSetting>());
  });

  test('getPlatformVersion', () async {
    FeatureFrontendSetting featureFrontendSettingPlugin = FeatureFrontendSetting();
    MockFeatureFrontendSettingPlatform fakePlatform = MockFeatureFrontendSettingPlatform();
    FeatureFrontendSettingPlatform.instance = fakePlatform;

    expect(await featureFrontendSettingPlugin.getPlatformVersion(), '42');
  });
}
