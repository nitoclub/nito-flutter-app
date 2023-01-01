import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:feature_frontend_setting/feature_frontend_setting_method_channel.dart';

void main() {
  MethodChannelFeatureFrontendSetting platform = MethodChannelFeatureFrontendSetting();
  const MethodChannel channel = MethodChannel('feature_frontend_setting');

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
