import 'package:firebase_remote_config/firebase_remote_config.dart';

const receive_money_share_my_qr = 'receive_money_share_my_qr';
const receive_money_cebuana = 'receive_money_cebuana';
const receive_money_quicks = 'receive_money_quicks';
const receive_money_albilad = 'receive_money_albilad';
const receive_money_western_union = 'receive_money_western_union';

class ReceiveMoneyFeatureModel {
  final bool is_receive_money_share_my_qr;
  final bool is_receive_money_cebuana;
  final bool is_receive_money_quicks;
  final bool is_receive_money_albilad;
  final bool is_receive_money_western_union;

  ReceiveMoneyFeatureModel({
    required this.is_receive_money_share_my_qr,
    required this.is_receive_money_cebuana,
    required this.is_receive_money_quicks,
    required this.is_receive_money_albilad,
    required this.is_receive_money_western_union,
  });

  factory ReceiveMoneyFeatureModel.fromRemoteConfig(
      FirebaseRemoteConfig remoteConfig) {
    return ReceiveMoneyFeatureModel(
      is_receive_money_share_my_qr:
          remoteConfig.getBool(receive_money_share_my_qr),
      is_receive_money_cebuana: remoteConfig.getBool(receive_money_cebuana),
      is_receive_money_quicks: remoteConfig.getBool(receive_money_quicks),
      is_receive_money_albilad: remoteConfig.getBool(receive_money_albilad),
      is_receive_money_western_union:
          remoteConfig.getBool(receive_money_western_union),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      receive_money_share_my_qr: is_receive_money_share_my_qr,
      receive_money_cebuana: is_receive_money_cebuana,
      receive_money_quicks: is_receive_money_quicks,
      receive_money_albilad: is_receive_money_albilad,
      receive_money_western_union: is_receive_money_western_union,
    };
  }
}
