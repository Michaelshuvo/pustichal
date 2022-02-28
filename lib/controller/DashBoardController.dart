
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/data/api/api_checker.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/data/model/response/ConfigModel.dart';
import 'package:pustichal/data/model/response/response_model.dart';
import 'package:pustichal/data/repository/form_repo.dart';
import 'package:pustichal/data/repository/splash_repo.dart';

class DashBoardController extends GetxController implements GetxService {

  DashBoardController() ;



  int _index=0;


  int get index => _index;
  PageController _pageController = PageController(initialPage: 0);


  PageController get pageController => _pageController;

  void setPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);

    _index = pageIndex;
  update();
  }



}