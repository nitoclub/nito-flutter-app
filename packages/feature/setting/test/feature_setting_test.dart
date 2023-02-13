import 'package:flutter_test/flutter_test.dart';
import 'package:feature_setting/feature_setting.dart';
import 'package:feature_setting/feature_setting_platform_interface.dart';
import 'package:feature_setting/feature_setting_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFeatureSettingPlatform
    with MockPlatformInterfaceMixin
    implements FeatureSettingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FeatureSettingPlatform initialPlatform = FeatureSettingPlatform.instance;

  test('$MethodChannelFeatureSetting is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFeatureSetting>());
  });

  test('getPlatformVersion', () async {
    FeatureSetting featureSettingPlugin = FeatureSetting();
    MockFeatureSettingPlatform fakePlatform = MockFeatureSettingPlatform();
    FeatureSettingPlatform.instance = fakePlatform;

    expect(await featureSettingPlugin.getPlatformVersion(), '42');
  });
}
