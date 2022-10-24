// import 'package:flutter_test/flutter_test.dart';
// import 'package:nito_feature_core/nito_feature_core.dart';
// import 'package:nito_feature_core/nito_feature_core_platform_interface.dart';
// import 'package:nito_feature_core/nito_feature_core_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockNitoFeatureCorePlatform
//     with MockPlatformInterfaceMixin
//     implements NitoFeatureCorePlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final NitoFeatureCorePlatform initialPlatform = NitoFeatureCorePlatform.instance;
//
//   test('$MethodChannelNitoFeatureCore is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelNitoFeatureCore>());
//   });
//
//   test('getPlatformVersion', () async {
//     NitoFeatureCore nitoFeatureCorePlugin = NitoFeatureCore();
//     MockNitoFeatureCorePlatform fakePlatform = MockNitoFeatureCorePlatform();
//     NitoFeatureCorePlatform.instance = fakePlatform;
//
//     expect(await nitoFeatureCorePlugin.getPlatformVersion(), '42');
//   });
// }
