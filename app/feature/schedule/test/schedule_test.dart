import 'package:flutter_test/flutter_test.dart';
import 'package:nito_feature_schedule/schedule.dart';
import 'package:nito_feature_schedule/schedule_platform_interface.dart';
import 'package:nito_feature_schedule/schedule_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSchedulePlatform
    with MockPlatformInterfaceMixin
    implements SchedulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SchedulePlatform initialPlatform = SchedulePlatform.instance;

  test('$MethodChannelSchedule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSchedule>());
  });

  test('getPlatformVersion', () async {
    Schedule schedulePlugin = Schedule();
    MockSchedulePlatform fakePlatform = MockSchedulePlatform();
    SchedulePlatform.instance = fakePlatform;

    expect(await schedulePlugin.getPlatformVersion(), '42');
  });
}
