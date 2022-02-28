
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pustichal/controller/DashBoardController.dart';
import 'package:pustichal/helper/get_di.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/images.dart';
import 'package:get/get.dart';
import 'package:pustichal/view/screen/Account/account.dart';
import 'package:pustichal/view/screen/customerOpinion/CustomerOpinionScreen.dart';
import 'package:pustichal/view/screen/dashBoard/widgets/bottom_nav_item.dart';
import 'package:pustichal/view/screen/home/home.dart';
import 'package:pustichal/view/screen/home/widget/customarOpinioSection.dart';
import 'package:pustichal/view/screen/sellsPoint/SellsPoint.dart';

class DashboardScreen extends StatefulWidget {


  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //late PageController _pageController;
  bool isOpen=false;
  int _pageIndex = 0;
  late List<Widget> _screens;
  GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();
  bool _canExit = true;

  @override
  void initState() {
    super.initState();

    _pageIndex = 0;

    //_pageController = PageController(initialPage: _pageIndex);

    _screens = [
      HomeScreen(),
      CustomerOpinonScreen(),
      SellsPoint(),
      Account(),
     /* OrderScreen(),
      OfferScreen(),
      CheckoutScreen(),*/
      //CartScreen(fromNav: true),


    ];

    /*if(GetPlatform.isMobile) {
      NetworkInfo.checkConnectivity(_scaffoldKey.currentContext);
    }*/
  }

  @override
  Widget build(BuildContext context) {


    return WillPopScope(
      onWillPop: () async {
        if (_pageIndex != 0) {
          Get.find<DashBoardController>().setPage(0);
          return false;
        } else {
          if(_canExit) {
            return true;
          }else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Back Press Again To Exit', style: TextStyle(color: Colors.white)),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Theme.of(context).accentColor,
              duration: Duration(seconds: 2),
              margin: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
            ));
            _canExit = true;
            Timer(Duration(seconds: 2), () {
              _canExit = false;
            });
            return false;
          }
        }
      },
      child: GetBuilder<DashBoardController>(

        builder: (dashBoardController) {
          return Scaffold(
            
            key: _scaffoldKey,
            extendBody: true,

            backgroundColor: Colors.transparent,





            bottomNavigationBar:  BottomAppBar(
              child: Container(
               color: Theme.of(context).primaryColor,
                height: 63,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(children: [
                      BottomNavItem(title:'হোম',iconData: Images.home, isSelected: dashBoardController.index == 0, onTap: () => dashBoardController.setPage(0),height: 20,),
                      BottomNavItem(title:'মতামত',iconData: Images.opinion, isSelected: dashBoardController.index == 1, onTap: () => dashBoardController.setPage(1),height: 23,),
                      BottomNavItem(title:'প্রাপ্তিস্থান',iconData: Images.sellingPoint, isSelected: dashBoardController.index == 2, onTap: () => dashBoardController.setPage(2),height: 25,),
                      BottomNavItem(title:'লগইন',iconData: Images.login, isSelected: dashBoardController.index == 3, onTap: () => dashBoardController.setPage(3),height: 20,),
                      // BottomNavItem(title:'My Orders',iconData: Images.order, isSelected: _pageIndex == 1, onTap: () => _setPage(1),height: 20),


                    ]),
                  ),
                ),
              ),
            ),
            body:
                 PageView.builder(
                  controller: dashBoardController.pageController,
                  itemCount: _screens.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _screens[index];
                  },
                ),

          );
        }
      ),
    );
  }


}