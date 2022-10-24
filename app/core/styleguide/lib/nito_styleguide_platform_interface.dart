import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nito_styleguide_method_channel.dart';

abstract class NitoStyleguidePlatform extends PlatformInterface {
  /// Constructs a NitoStyleguidePlatform.
  NitoStyleguidePlatform() : super(token: _token);

  static final Object _token = Object();

  static NitoStyleguidePlatform _instance = MethodChannelNitoStyleguide();

  /// The default instance of [NitoStyleguidePlatform] to use.
  ///
  /// Defaults to [MethodChannelNitoStyleguide].
  static NitoStyleguidePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NitoStyleguidePlatform] when
  /// they register themselves.
  static set instance(NitoStyleguidePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
