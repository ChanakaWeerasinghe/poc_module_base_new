import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'poc_module_base_platform_interface.dart';

/// An implementation of [PocModuleBasePlatform] that uses method channels.
class MethodChannelPocModuleBase extends PocModuleBasePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('poc_module_base');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel!.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
