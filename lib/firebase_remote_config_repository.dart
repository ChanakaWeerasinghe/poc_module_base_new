import 'dart:async';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:poc_module_base/firebase/buy_load_tabs_model.dart';
import 'package:poc_module_base/firebase/receive_money_model.dart';
import 'package:poc_module_base/firebase/send_money_model.dart';

import 'firebase/features_model.dart';

class FirebaseRemoteConfigRepository {
  Future<FeaturesModel> getFeaturesStatus() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await remoteConfig.setDefaults(
      {
        historyEnabled: true,
        qrEnabled: true,
        profileEnabled: true,
        cashInEnabled: true,
        receiveMoneyEnabled: true,
        sendMoneyEnabled: true,
        buyLoadEnabled: true,
        payBillsEnabled: true,
      },
    );
    await remoteConfig.fetchAndActivate();

    return FeaturesModel.fromRemoteConfig(remoteConfig);
  }

  Future<BuyLoadTabsModel> getBuyLoadTabs() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await remoteConfig.setDefaults(
      {
        nonTelcoEnabled: true,
      },
    );
    await remoteConfig.fetchAndActivate();

    return BuyLoadTabsModel.fromRemoteConfig(remoteConfig);
  }



  Future<SendMoneyFeatureModel> getSendMoneyFeaturesStatus() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await remoteConfig.setDefaults(
      {
        send_money_insta_pay: true,
        send_money_to_my_saving: true,
        send_money_to_my_wallet: true,
        cash_pickup: true,
        send_money_to_other_savings: true,
        send_money_to_other_wallet: true,
        send_money_instapay_qr:true
      },
    );
    await remoteConfig.fetchAndActivate();

    return SendMoneyFeatureModel.fromRemoteConfig(remoteConfig);
  }


  Future<ReceiveMoneyFeatureModel> getReceiveFeaturesStatus() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await remoteConfig.setDefaults(
      {
        receive_money_share_my_qr: true,
        receive_money_cebuana: true,
        receive_money_quicks: true,
        receive_money_albilad: true,
        receive_money_western_union: true,
      },
    );
    await remoteConfig.fetchAndActivate();

    return ReceiveMoneyFeatureModel.fromRemoteConfig(remoteConfig);
  }

}
