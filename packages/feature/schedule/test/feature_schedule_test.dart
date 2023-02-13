import 'package:flutter_test/flutter_test.dart';
import 'package:feature_schedule/feature_schedule.dart';
import 'package:feature_schedule/feature_schedule_platform_interface.dart';
import 'package:feature_schedule/feature_schedule_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFeatureSchedulePlatform
    with MockPlatformInterfaceMixin
    implements FeatureSchedulePlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FeatureSchedulePlatform initialPlatform =
      FeatureSchedulePlatform.instance;

  test('$MethodChannelFeatureSchedule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFeatureSchedule>());
  });

  test('getPlatformVersion', () async {
    FeatureSchedule featureSchedulePlugin = FeatureSchedule();
    MockFeatureSchedulePlatform fakePlatform = MockFeatureSchedulePlatform();
    FeatureSchedulePlatform.instance = fakePlatform;

    expect(await featureSchedulePlugin.getPlatformVersion(), '42');
  });
}
