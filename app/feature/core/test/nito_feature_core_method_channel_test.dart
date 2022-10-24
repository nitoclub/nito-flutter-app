// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:nito_feature_core/nito_feature_core_method_channel.dart';
//
// void main() {
//   MethodChannelNitoFeatureCore platform = MethodChannelNitoFeatureCore();
//   const MethodChannel channel = MethodChannel('nito_feature_core');
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });
//
//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });
//
//   test('getPlatformVersion', () async {
//     expect(await platform.getPlatformVersion(), '42');
//   });
// }
