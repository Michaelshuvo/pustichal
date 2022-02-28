import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';

class CountWidget extends StatelessWidget {
  final String title;
  final String count;
  final String icon;

  const CountWidget({Key? key, required this.title, required this.count, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
     
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff2e6faa),
                  borderRadius: BorderRadius.all(Radius.circular(3))
              ),
              child: Image.asset(icon,width: 30,height: 30,color: Colors.white,)),
          SizedBox(height: 5,),
          Text(count,style: robotoBold.copyWith(color:Color(0xff369EC9),fontSize: Dimensions.fontSizeLarge ),),
          SizedBox(height: 2,),
          Text(title,textAlign:TextAlign.center,style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall,color: Color(0xff6e7673) ),),

          //Image.asset(icon,width: 30,height: 30,),
        ],
      ),
    );
  }
}
