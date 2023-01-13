import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'feature_frontend_schedule_method_channel.dart';

abstract class FeatureFrontendSchedulePlatform extends PlatformInterface {
  /// Constructs a FeatureFrontendSchedulePlatform.
  FeatureFrontendSchedulePlatform() : super(token: _token);

  static final Object _token = Object();

  static FeatureFrontendSchedulePlatform _instance =
      MethodChannelFeatureFrontendSchedule();

  /// The default instance of [FeatureFrontendSchedulePlatform] to use.
  ///
  /// Defaults to [MethodChannelFeatureFrontendSchedule].
  static FeatureFrontendSchedulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FeatureFrontendSchedulePlatform] when
  /// they register themselves.
  static set instance(FeatureFrontendSchedulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
