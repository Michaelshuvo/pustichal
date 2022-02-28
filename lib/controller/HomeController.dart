
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/data/api/api_checker.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/data/model/response/HomePageModel.dart';
import 'package:pustichal/data/model/response/response_model.dart';
import 'package:pustichal/data/repository/form_repo.dart';
import 'package:pustichal/data/repository/home_repo.dart';

class HomeController extends GetxController implements GetxService {
  final Home_Repo home_repo;
  HomeController({required this.home_repo}) ;

  bool _isLoading = true;
  HomePageModel? _homePageModel;
  AboutUs? _aboutUs;
  List<Videos>? _videos;
  List<Locaitons>? _locations;
  List<Materials>? _materials;

  bool get isLoading => _isLoading;
  HomePageModel? get homePageModel => _homePageModel;
  AboutUs? get aboutUs => _aboutUs;
  List<Videos>? get videos => _videos;
  List<Locaitons>? get locaitons => _locations;
  List<Materials>? get materials => _materials;



  Future<void> homeData() async {
    _isLoading = true;
    update();
    Response response = await home_repo.getHomePageInfo();
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      _videos=[];
      _materials=[];
      _locations=[];

      _homePageModel=HomePageModel.fromJson(response.body);
       _aboutUs=_homePageModel!.aboutUs!;
       _videos!.addAll(_homePageModel!.videos!);
      _locations!.addAll(_homePageModel!.locaitons!);
      _materials!.addAll(_homePageModel!.materials!);

    } else {
       ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();

  }



}