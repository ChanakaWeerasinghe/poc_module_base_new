import 'package:flutter/cupertino.dart';

import 'firebase/features_model.dart';
import 'firebase_remote_config_repository.dart';
import 'poc_module_base_platform_interface.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:firebase_remote_config/firebase_remote_config.dart';

class PocModuleBase {
  Future<String?> getPlatformVersion() {
    return PocModuleBasePlatform.instance.getPlatformVersion();
  }

  Future<String?> getFeaturesStatus() async {
    FirebaseRemoteConfigRepository remoteConfigRepository =
        FirebaseRemoteConfigRepository();

    try {
      FeaturesModel response = await remoteConfigRepository.getFeaturesStatus();
      debugPrint("REMOTE CONFIG: " + response.toJson().toString());
      return response.toString();
    } catch (e) {
      debugPrint("REMOTE CONFIG: Error " + e.toString());

      return e.toString();
    }
  }
}
