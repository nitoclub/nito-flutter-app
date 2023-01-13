import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'feature_frontend_setting_method_channel.dart';

abstract class FeatureFrontendSettingPlatform extends PlatformInterface {
  /// Constructs a FeatureFrontendSettingPlatform.
  FeatureFrontendSettingPlatform() : super(token: _token);

  static final Object _token = Object();

  static FeatureFrontendSettingPlatform _instance =
      MethodChannelFeatureFrontendSetting();

  /// The default instance of [FeatureFrontendSettingPlatform] to use.
  ///
  /// Defaults to [MethodChannelFeatureFrontendSetting].
  static FeatureFrontendSettingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FeatureFrontendSettingPlatform] when
  /// they register themselves.
  static set instance(FeatureFrontendSettingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
