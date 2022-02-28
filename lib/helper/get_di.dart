import 'dart:convert';


import 'package:flutter/services.dart';
import 'package:pustichal/controller/CustomerOpinionController.dart';
import 'package:pustichal/controller/DashBoardController.dart';
import 'package:pustichal/controller/HomeController.dart';
import 'package:pustichal/controller/SplashController.dart';
import 'package:pustichal/data/api/api_client.dart';
import 'package:pustichal/data/repository/form_repo.dart';
import 'package:pustichal/data/repository/home_repo.dart';
import 'package:pustichal/data/repository/splash_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'app_constants.dart';

Future<void> init() async {
  // Core

  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));

  // Repository
  Get.lazyPut(() => Form_Repo( apiClient: Get.find()));
  Get.lazyPut(() => Home_Repo( apiClient: Get.find()));
  Get.lazyPut(() => SplashRepo( apiClient: Get.find(), sharedPreferences: Get.find()));


  // Controller
  Get.lazyPut(() => DashBoardController());
  Get.lazyPut(() => CustomerOpinonController(form_Repo: Get.find()));
  Get.lazyPut(() => HomeController(home_repo: Get.find()));
  Get.lazyPut(() => SplashController(splashRepo: Get.find()));



}
