import 'feature_schedule_platform_interface.dart';

class FeatureSchedule {
  Future<String?> getPlatformVersion() {
    return FeatureSchedulePlatform.instance.getPlatformVersion();
  }
}
