import 'feature_frontend_schedule_platform_interface.dart';

class FeatureFrontendSchedule {
  Future<String?> getPlatformVersion() {
    return FeatureFrontendSchedulePlatform.instance.getPlatformVersion();
  }
}
