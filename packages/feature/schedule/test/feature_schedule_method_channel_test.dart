import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:feature_schedule/feature_schedule_method_channel.dart';

void main() {
  MethodChannelFeatureSchedule platform = MethodChannelFeatureSchedule();
  const MethodChannel channel = MethodChannel('feature_schedule');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
