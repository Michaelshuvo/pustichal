import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pustichal/controller/SplashController.dart';
import 'package:pustichal/helper/route_helper.dart';
import 'package:pustichal/util/dimensions.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _connectionStatus = 'Unknown';

  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;


  @override
  void initState() {
    super.initState();

    _onConnectivityChanged = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {


      bool isNotConnected = result!= ConnectivityResult.wifi && result!= ConnectivityResult.mobile;
        print(isNotConnected);
       // isNotConnected ? SizedBox() : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? "No Connection" : "connected",
            textAlign: TextAlign.center,
          ),
        ));
        if(!isNotConnected) {
          _route();
        }


    });


    //_route();

  }

  @override
  void dispose() {
    super.dispose();

    _onConnectivityChanged!.cancel();
  }

  void _route() {
    Get.find<SplashController>().GetConfig().then((isSuccess) {
      if(isSuccess) {
        Timer(Duration(seconds: 1), () async {
          Get.offNamed(RouteHelper.dashBoard);

         });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _globalKey,
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo.png', width: MediaQuery.of(context).size.width/2),
              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              /*Image.asset(Images.logo_name, width: 150),*/
              /*SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Text(AppConstants.APP_NAME, style: robotoMedium.copyWith(fontSize: 25)),*/
            ],
          ),
        ),
      ),
    );
  }
}
