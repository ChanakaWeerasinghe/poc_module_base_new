import 'package:firebase_remote_config/firebase_remote_config.dart';

const historyEnabled = 'history_enabled';
const qrEnabled = 'qr_enabled';
const profileEnabled = 'profile_enabled';
const cashInEnabled = 'cash_in_enabled';
const receiveMoneyEnabled = 'receive_money_enabled';
const sendMoneyEnabled = 'send_money_enabled';
const buyLoadEnabled = 'buy_load_enabled';
const payBillsEnabled = 'pay_bills_enabled';

class FeaturesModel {
  final bool isHistoryEnabled;
  final bool isQREnabled;
  final bool isProfileEnabled;
  final bool isCashInEnabled;
  final bool isReceiveMoneyEnabled;
  final bool isSendMoneyEnabled;
  final bool isBuyLoadEnabled;
  final bool isPayBillsEnabled;

  FeaturesModel({
    required this.isHistoryEnabled,
    required this.isQREnabled,
    required this.isProfileEnabled,
    required this.isCashInEnabled,
    required this.isReceiveMoneyEnabled,
    required this.isSendMoneyEnabled,
    required this.isBuyLoadEnabled,
    required this.isPayBillsEnabled,
  });

  factory FeaturesModel.fromRemoteConfig(FirebaseRemoteConfig remoteConfig) {
    return FeaturesModel(
      isHistoryEnabled: remoteConfig.getBool(historyEnabled),
      isQREnabled: remoteConfig.getBool(qrEnabled),
      isProfileEnabled: remoteConfig.getBool(profileEnabled),
      isCashInEnabled: remoteConfig.getBool(cashInEnabled),
      isReceiveMoneyEnabled: remoteConfig.getBool(receiveMoneyEnabled),
      isSendMoneyEnabled: remoteConfig.getBool(sendMoneyEnabled),
      isBuyLoadEnabled: remoteConfig.getBool(buyLoadEnabled),
      isPayBillsEnabled: remoteConfig.getBool(payBillsEnabled),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'history_enabled': isHistoryEnabled,
      'qr_enabled': isQREnabled,
      'profile_enabled': isProfileEnabled,
      'cash_in_enabled': isCashInEnabled,
      'receive_money_enabled': isReceiveMoneyEnabled,
      'send_money_enabled': isSendMoneyEnabled,
      'buy_load_enabled': isBuyLoadEnabled,
      'pay_bills_enabled': isPayBillsEnabled,
    };
  }
}
