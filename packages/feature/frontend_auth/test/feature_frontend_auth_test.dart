// import 'package:flutter_test/flutter_test.dart';
// import 'package:auth/auth.dart';
// import 'package:auth/auth_platform_interface.dart';
// import 'package:auth/auth_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockAuthPlatform
//     with MockPlatformInterfaceMixin
//     implements AuthPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final AuthPlatform initialPlatform = AuthPlatform.instance;
//
//   test('$MethodChannelAuth is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelAuth>());
//   });
//
//   test('getPlatformVersion', () async {
//     Auth authPlugin = Auth();
//     MockAuthPlatform fakePlatform = MockAuthPlatform();
//     AuthPlatform.instance = fakePlatform;
//
//     expect(await authPlugin.getPlatformVersion(), '42');
//   });
// }
