import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';

class SellsPointWidget extends StatelessWidget {
  final String title;
  const SellsPointWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width/3,
        //height: MediaQuery.of(context).size.width/8,


      decoration: BoxDecoration(
        color:Color(0xff369EC9),
        borderRadius: BorderRadius.all(Radius.circular(8)),
          //border: Border.all(color:Color(0xff369EC9),width: 0.8)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                 color: Colors.white,
                  child: Image.asset("assets/images/locshop.png",width: 40,height: 40,)),
            ),
            SizedBox(height: 10,),
            Expanded(
              flex: 2,
              child: Container(

                  width: double.infinity,
                   color: Color(0xff369EC9),
                  child: Center(child: Text(title,style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge,color: Colors.white ),))),
            ),

          ],

        ),
      ),
    );
  }
}
