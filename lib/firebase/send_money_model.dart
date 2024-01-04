import 'package:firebase_remote_config/firebase_remote_config.dart';

const send_money_insta_pay = 'send_money_insta_pay';
const send_money_to_my_saving = 'send_money_to_my_saving';
const send_money_to_my_wallet = 'send_money_to_my_wallet';
const cash_pickup = 'cash_pickup';
const send_money_to_other_savings = 'send_money_to_other_savings';
const send_money_to_other_wallet = 'send_money_to_other_wallet';
const send_money_instapay_qr = 'send_money_instapay_qr';

class SendMoneyFeatureModel {
  final bool is_send_money_insta_pay;
  final bool is_send_money_to_my_saving;
  final bool is_send_money_to_my_wallet;
  final bool is_cash_pickup;
  final bool is_send_money_to_other_savings;
  final bool is_send_money_to_other_wallet;
  final bool is_send_money_instapay_qr;

  SendMoneyFeatureModel({
    required this.is_send_money_insta_pay,
    required this.is_send_money_to_my_saving,
    required this.is_send_money_to_my_wallet,
    required this.is_cash_pickup,
    required this.is_send_money_to_other_savings,
    required this.is_send_money_to_other_wallet,
    required this.is_send_money_instapay_qr,
  });

  factory SendMoneyFeatureModel.fromRemoteConfig(
      FirebaseRemoteConfig remoteConfig) {
    return SendMoneyFeatureModel(
      is_send_money_insta_pay: remoteConfig.getBool(send_money_insta_pay),
      is_send_money_to_my_saving: remoteConfig.getBool(send_money_to_my_saving),
      is_send_money_to_my_wallet: remoteConfig.getBool(send_money_to_my_wallet),
      is_cash_pickup: remoteConfig.getBool(cash_pickup),
      is_send_money_to_other_savings:
          remoteConfig.getBool(send_money_to_other_savings),
      is_send_money_to_other_wallet:
          remoteConfig.getBool(send_money_to_other_wallet),
      is_send_money_instapay_qr: remoteConfig.getBool(send_money_instapay_qr),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      send_money_insta_pay: is_send_money_insta_pay,
      send_money_to_my_saving: is_send_money_to_my_saving,
      send_money_to_my_wallet: is_send_money_to_my_wallet,
      cash_pickup: is_cash_pickup,
      send_money_to_other_savings: is_send_money_to_other_savings,
      send_money_to_other_wallet: is_send_money_to_other_wallet,
      send_money_instapay_qr: is_send_money_instapay_qr,
    };
  }
}
