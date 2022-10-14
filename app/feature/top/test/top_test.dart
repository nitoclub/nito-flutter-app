import 'package:flutter_test/flutter_test.dart';
import 'package:feature_top/top.dart';
import 'package:feature_top/top_platform_interface.dart';
import 'package:feature_top/top_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTopPlatform
    with MockPlatformInterfaceMixin
    implements TopPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TopPlatform initialPlatform = TopPlatform.instance;

  test('$MethodChannelTop is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTop>());
  });

  test('getPlatformVersion', () async {
    Top topPlugin = Top();
    MockTopPlatform fakePlatform = MockTopPlatform();
    TopPlatform.instance = fakePlatform;

    expect(await topPlugin.getPlatformVersion(), '42');
  });
}
