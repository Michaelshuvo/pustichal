
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/data/api/api_checker.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/data/model/response/ConfigModel.dart';
import 'package:pustichal/data/model/response/response_model.dart';
import 'package:pustichal/data/repository/form_repo.dart';
import 'package:pustichal/data/repository/splash_repo.dart';

class SplashController extends GetxController implements GetxService {
  final SplashRepo splashRepo;
  SplashController({required this.splashRepo}) ;

  bool _isLoading = false;
  ConfigModel? _configModel;

  bool get isLoading => _isLoading;
  ConfigModel? get configModel => _configModel;



  Future<bool> GetConfig() async {
    Response response = await splashRepo.getConfigData();
    bool _isSuccess = false;
    if(response.statusCode == 200) {
      print("yess");
      _configModel = ConfigModel.fromJson(response.body);
     // print(_configModel.appMinimumVersion.toString());
      _isSuccess = true;
    }else {
      print("no");
      ApiChecker.checkApi(response);
      _isSuccess = false;
    }
    update();
    return _isSuccess;
  }



}