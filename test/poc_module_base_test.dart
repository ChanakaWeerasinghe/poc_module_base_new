import 'package:flutter_test/flutter_test.dart';
import 'package:poc_module_base/poc_module_base.dart';
import 'package:poc_module_base/poc_module_base_platform_interface.dart';
import 'package:poc_module_base/poc_module_base_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPocModuleBasePlatform
    with MockPlatformInterfaceMixin
    implements PocModuleBasePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PocModuleBasePlatform initialPlatform = PocModuleBasePlatform.instance;

  test('$MethodChannelPocModuleBase is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPocModuleBase>());
  });

  test('getPlatformVersion', () async {
    PocModuleBase pocModuleBasePlugin = PocModuleBase();
    MockPocModuleBasePlatform fakePlatform = MockPocModuleBasePlatform();
    PocModuleBasePlatform.instance = fakePlatform;

    expect(await pocModuleBasePlugin.getPlatformVersion(), '42');
  });
}
