import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pustichal/theme/light_theme.dart';
import 'package:pustichal/view/screen/dashBoard/DashBoard.dart';
import 'package:pustichal/view/screen/home/home.dart';

import 'helper/app_constants.dart';
import 'helper/get_di.dart';
import 'helper/route_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.APP_NAME,
      navigatorKey: Get.key,



      theme: light,
      initialRoute:RouteHelper.getInitialRoute(),
      getPages: RouteHelper.routes,
      defaultTransition: Transition.topLevel,
      transitionDuration: Duration(milliseconds: 500),

    );
  }
}


