import 'package:firebase_remote_config/firebase_remote_config.dart';

const receive_money_share_my_qr = 'receive_money_share_my_qr';
const receive_money_cebuana = 'receive_money_cebuana';
const receive_money_quicks = 'receive_money_quicks';
const receive_money_albilad = 'receive_money_albilad';
const receive_money_western_union = 'receive_money_western_union';

class ReceiveMoneyFeatureModel {
  final bool isReceiveMoneyShareMyQr;
  final bool isReceiveMoneyCebuana;
  final bool isReceiveMoneyQuicks;
  final bool isReceiveMoneyAlbilad;
  final bool isReceiveMoneyWesternUnion;

  ReceiveMoneyFeatureModel({
    required this.isReceiveMoneyShareMyQr,
    required this.isReceiveMoneyCebuana,
    required this.isReceiveMoneyQuicks,
    required this.isReceiveMoneyAlbilad,
    required this.isReceiveMoneyWesternUnion,
  });

  factory ReceiveMoneyFeatureModel.fromRemoteConfig(
      FirebaseRemoteConfig remoteConfig) {
    return ReceiveMoneyFeatureModel(
      isReceiveMoneyShareMyQr:
          remoteConfig.getBool(receive_money_share_my_qr),
      isReceiveMoneyCebuana: remoteConfig.getBool(receive_money_cebuana),
      isReceiveMoneyQuicks: remoteConfig.getBool(receive_money_quicks),
      isReceiveMoneyAlbilad: remoteConfig.getBool(receive_money_albilad),
      isReceiveMoneyWesternUnion:
          remoteConfig.getBool(receive_money_western_union),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      receive_money_share_my_qr: isReceiveMoneyShareMyQr,
      receive_money_cebuana: isReceiveMoneyCebuana,
      receive_money_quicks: isReceiveMoneyQuicks,
      receive_money_albilad: isReceiveMoneyAlbilad,
      receive_money_western_union: isReceiveMoneyWesternUnion,
    };
  }
}
