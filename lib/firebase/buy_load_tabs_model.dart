import 'package:firebase_remote_config/firebase_remote_config.dart';

const nonTelcoEnabled = 'non_telco_enabled';

class BuyLoadTabsModel {
  final bool isNonTelcoEnabled;

  BuyLoadTabsModel({
    required this.isNonTelcoEnabled,
  });

  factory BuyLoadTabsModel.fromRemoteConfig(FirebaseRemoteConfig remoteConfig) {
    return BuyLoadTabsModel(
      isNonTelcoEnabled: remoteConfig.getBool(nonTelcoEnabled),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'non_telco_enabled': isNonTelcoEnabled,
    };
  }
}
