import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'schedule_method_channel.dart';

abstract class SchedulePlatform extends PlatformInterface {
  /// Constructs a SchedulePlatform.
  SchedulePlatform() : super(token: _token);

  static final Object _token = Object();

  static SchedulePlatform _instance = MethodChannelSchedule();

  /// The default instance of [SchedulePlatform] to use.
  ///
  /// Defaults to [MethodChannelSchedule].
  static SchedulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SchedulePlatform] when
  /// they register themselves.
  static set instance(SchedulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
