import 'package:flutter_test/flutter_test.dart';
import 'package:feature_frontend_schedule/feature_frontend_schedule.dart';
import 'package:feature_frontend_schedule/feature_frontend_schedule_platform_interface.dart';
import 'package:feature_frontend_schedule/feature_frontend_schedule_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFeatureFrontendSchedulePlatform
    with MockPlatformInterfaceMixin
    implements FeatureFrontendSchedulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FeatureFrontendSchedulePlatform initialPlatform = FeatureFrontendSchedulePlatform.instance;

  test('$MethodChannelFeatureFrontendSchedule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFeatureFrontendSchedule>());
  });

  test('getPlatformVersion', () async {
    FeatureFrontendSchedule featureFrontendSchedulePlugin = FeatureFrontendSchedule();
    MockFeatureFrontendSchedulePlatform fakePlatform = MockFeatureFrontendSchedulePlatform();
    FeatureFrontendSchedulePlatform.instance = fakePlatform;

    expect(await featureFrontendSchedulePlugin.getPlatformVersion(), '42');
  });
}
