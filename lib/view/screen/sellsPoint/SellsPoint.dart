
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pustichal/controller/HomeController.dart';
import 'package:pustichal/data/model/response/HomePageModel.dart';
import 'package:pustichal/view/screen/home/widget/sellsPointWidget.dart';
import 'package:url_launcher/url_launcher.dart';
class SellsPoint extends StatefulWidget {
  const SellsPoint({Key? key}) : super(key: key);

  @override
  _SellsPointState createState() => _SellsPointState();
}

class _SellsPointState extends State<SellsPoint> {
  List<Locaitons> locations=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    locations=Get.find<HomeController>().locaitons!;
  }
  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("পুষ্টি চালের প্রাপ্তিস্থান",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),)),
      ),
      body: locations!=null?GridView.builder(
        padding: EdgeInsets.only(top: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:  2),
      physics: BouncingScrollPhysics(),

      itemCount: locations!.length,
      itemBuilder: (context, i) {

        return Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 10),
          child: InkWell(
              onTap: ()=>{
                //openMap(, sellsPointModel[i].lang)
              },
              child: SellsPointWidget(title: locations![i].title!)),
        );
      },
    ):SizedBox(),
    );
  }
}
