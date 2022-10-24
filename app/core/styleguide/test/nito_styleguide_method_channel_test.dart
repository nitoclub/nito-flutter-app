import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nito_styleguide/nito_styleguide_method_channel.dart';

void main() {
  MethodChannelNitoStyleguide platform = MethodChannelNitoStyleguide();
  const MethodChannel channel = MethodChannel('nito_styleguide');

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
