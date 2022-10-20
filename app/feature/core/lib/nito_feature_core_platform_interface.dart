import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nito_feature_core_method_channel.dart';

abstract class NitoFeatureCorePlatform extends PlatformInterface {
  /// Constructs a NitoFeatureCorePlatform.
  NitoFeatureCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static NitoFeatureCorePlatform _instance = MethodChannelNitoFeatureCore();

  /// The default instance of [NitoFeatureCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelNitoFeatureCore].
  static NitoFeatureCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NitoFeatureCorePlatform] when
  /// they register themselves.
  static set instance(NitoFeatureCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
