
import 'feature_admin_top_platform_interface.dart';

class FeatureAdminTop {
  Future<String?> getPlatformVersion() {
    return FeatureAdminTopPlatform.instance.getPlatformVersion();
  }
}
