import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/view/screen/customerOpinion/CustomerOpinionScreen.dart';
import 'package:pustichal/view/screen/dashBoard/DashBoard.dart';
import 'package:pustichal/view/screen/splash/splash_screen.dart';

class RouteHelper {
  static const String initial = '/';


  static const String dashBoard = '/dashBoard';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String customer_opinion = '/customer_opinion';




  static String getInitialRoute() => '$initial';


  static String getCustomerOpinionRoute() => '$customer_opinion';





  static List<GetPage> routes = [

    GetPage(name: customer_opinion, page: () => CustomerOpinonScreen()),
    GetPage(name: initial, page: () => SplashScreen()),
    GetPage(name: dashBoard, page: () => DashboardScreen()),

  ];


}