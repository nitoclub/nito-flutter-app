import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:feature_admin_top/feature_admin_top_method_channel.dart';

void main() {
  MethodChannelFeatureAdminTop platform = MethodChannelFeatureAdminTop();
  const MethodChannel channel = MethodChannel('feature_admin_top');

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
