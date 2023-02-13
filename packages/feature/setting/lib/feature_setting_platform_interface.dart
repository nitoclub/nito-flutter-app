import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'feature_setting_method_channel.dart';

abstract class FeatureSettingPlatform extends PlatformInterface {
  /// Constructs a FeatureSettingPlatform.
  FeatureSettingPlatform() : super(token: _token);

  static final Object _token = Object();

  static FeatureSettingPlatform _instance =
      MethodChannelFeatureSetting();

  /// The default instance of [FeatureSettingPlatform] to use.
  ///
  /// Defaults to [MethodChannelFeatureSetting].
  static FeatureSettingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FeatureSettingPlatform] when
  /// they register themselves.
  static set instance(FeatureSettingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
