import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'poc_module_base_method_channel.dart';

abstract class PocModuleBasePlatform extends PlatformInterface {
  /// Constructs a PocModuleBasePlatform.
  PocModuleBasePlatform() : super(token: _token);

  static final Object _token = Object();

  static PocModuleBasePlatform _instance = MethodChannelPocModuleBase();

  /// The default instance of [PocModuleBasePlatform] to use.
  ///
  /// Defaults to [MethodChannelPocModuleBase].
  static PocModuleBasePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PocModuleBasePlatform] when
  /// they register themselves.
  static set instance(PocModuleBasePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
