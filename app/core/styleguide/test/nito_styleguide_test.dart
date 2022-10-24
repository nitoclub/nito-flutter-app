import 'package:flutter_test/flutter_test.dart';
import 'package:nito_styleguide/nito_styleguide.dart';
import 'package:nito_styleguide/nito_styleguide_platform_interface.dart';
import 'package:nito_styleguide/nito_styleguide_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNitoStyleguidePlatform
    with MockPlatformInterfaceMixin
    implements NitoStyleguidePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NitoStyleguidePlatform initialPlatform = NitoStyleguidePlatform.instance;

  test('$MethodChannelNitoStyleguide is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNitoStyleguide>());
  });

  test('getPlatformVersion', () async {
    NitoStyleguide nitoStyleguidePlugin = NitoStyleguide();
    MockNitoStyleguidePlatform fakePlatform = MockNitoStyleguidePlatform();
    NitoStyleguidePlatform.instance = fakePlatform;

    expect(await nitoStyleguidePlugin.getPlatformVersion(), '42');
  });
}
