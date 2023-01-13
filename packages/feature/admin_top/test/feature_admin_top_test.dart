import 'package:flutter_test/flutter_test.dart';
import 'package:feature_admin_top/feature_admin_top.dart';
import 'package:feature_admin_top/feature_admin_top_platform_interface.dart';
import 'package:feature_admin_top/feature_admin_top_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFeatureAdminTopPlatform
    with MockPlatformInterfaceMixin
    implements FeatureAdminTopPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FeatureAdminTopPlatform initialPlatform =
      FeatureAdminTopPlatform.instance;

  test('$MethodChannelFeatureAdminTop is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFeatureAdminTop>());
  });

  test('getPlatformVersion', () async {
    FeatureAdminTop featureAdminTopPlugin = FeatureAdminTop();
    MockFeatureAdminTopPlatform fakePlatform = MockFeatureAdminTopPlatform();
    FeatureAdminTopPlatform.instance = fakePlatform;

    expect(await featureAdminTopPlugin.getPlatformVersion(), '42');
  });
}
