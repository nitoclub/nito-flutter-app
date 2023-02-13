import 'feature_setting_platform_interface.dart';

class FeatureSetting {
  Future<String?> getPlatformVersion() {
    return FeatureSettingPlatform.instance.getPlatformVersion();
  }
}
