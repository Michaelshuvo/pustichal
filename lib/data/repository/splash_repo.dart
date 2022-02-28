

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/data/api/api_client.dart';
import 'package:pustichal/helper/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  SplashRepo({required this.sharedPreferences, required this.apiClient});

 Future<Response> getConfigData() async {
    Response _response = await apiClient.getData(AppConstants.CONFIG_URI);
    return _response;
  }


 /* Future<bool> initSharedData() {
  if(!sharedPreferences.containsKey(AppConstants.THEME)) {
      sharedPreferences.setBool(AppConstants.THEME, false);
    }


    if(!sharedPreferences.containsKey(AppConstants.LANGUAGE_CODE)) {
      sharedPreferences.setString(AppConstants.LANGUAGE_CODE, AppConstants.languages[0].languageCode);
    }
    if(!sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      sharedPreferences.setStringList(AppConstants.CART_LIST, []);
    }
    if(!sharedPreferences.containsKey(AppConstants.SEARCH_HISTORY)) {
      sharedPreferences.setStringList(AppConstants.SEARCH_HISTORY, []);
    }


    if(!sharedPreferences.containsKey(AppConstants.NOTIFICATION_COUNT)) {
      sharedPreferences.setInt(AppConstants.NOTIFICATION_COUNT, 0);
    }
    if(!sharedPreferences.containsKey(AppConstants.FIRSTTIME)) {
      sharedPreferences.setBool(AppConstants.FIRSTTIME, true);
    }
    return Future.value(true);
  }*/


}
