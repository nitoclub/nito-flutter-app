
import 'feature_frontend_setting_platform_interface.dart';

class FeatureFrontendSetting {
  Future<String?> getPlatformVersion() {
    return FeatureFrontendSettingPlatform.instance.getPlatformVersion();
  }
}
