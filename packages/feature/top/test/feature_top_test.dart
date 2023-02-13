// import 'package:flutter_test/flutter_test.dart';
// import 'package:feature_frontend_top/feature_top.dart';
// import 'package:feature_frontend_top/feature_frontend_top_platform_interface.dart';
// import 'package:feature_frontend_top/feature_frontend_top_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockFeatureFrontendTopPlatform
//     with MockPlatformInterfaceMixin
//     implements FeatureFrontendTopPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final FeatureFrontendTopPlatform initialPlatform = FeatureFrontendTopPlatform.instance;
//
//   test('$MethodChannelFeatureFrontendTop is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelFeatureFrontendTop>());
//   });
//
//   test('getPlatformVersion', () async {
//     FeatureFrontendTop featureFrontendTopPlugin = FeatureFrontendTop();
//     MockFeatureFrontendTopPlatform fakePlatform = MockFeatureFrontendTopPlatform();
//     FeatureFrontendTopPlatform.instance = fakePlatform;
//
//     expect(await featureFrontendTopPlugin.getPlatformVersion(), '42');
//   });
// }
