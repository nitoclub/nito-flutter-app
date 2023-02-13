// import 'package:flutter_test/flutter_test.dart';
// import 'package:feature_frontend_top/feature_top.dart';
// import 'package:feature_frontend_top/feature_frontend_top_platform_interface.dart';
// import 'package:feature_frontend_top/feature_frontend_top_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockFeatureTopPlatform
//     with MockPlatformInterfaceMixin
//     implements FeatureTopPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final FeatureTopPlatform initialPlatform = FeatureTopPlatform.instance;
//
//   test('$MethodChannelFeatureTop is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelFeatureTop>());
//   });
//
//   test('getPlatformVersion', () async {
//     FeatureTop featureTopPlugin = FeatureTop();
//     MockFeatureTopPlatform fakePlatform = MockFeatureTopPlatform();
//     FeatureTopPlatform.instance = fakePlatform;
//
//     expect(await featureTopPlugin.getPlatformVersion(), '42');
//   });
// }
