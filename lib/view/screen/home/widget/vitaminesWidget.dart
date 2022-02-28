import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';

class VitaminsWidget extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final Color startColor;
  final Color endColor;
  const VitaminsWidget({Key? key, required this.title, required this.image, required this.description, required this.startColor, required this.endColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top:10,left: 5,right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),

      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 0,),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top:7,left: 2),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,style: robotoBold.copyWith(color:Colors.black,fontSize: Dimensions.fontSizeSmall ),),
                            Expanded(child: Text(description,style: robotoRegular.copyWith(height: 0.9,color:Colors.white,fontSize: 9 ),)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: SizedBox(),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: startColor,
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(40),
                        bottomLeft:Radius.circular(40),
                        topRight:Radius.circular(41),
                        bottomRight:Radius.circular(41),

                    )
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(image,width: 20,height: 20,),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

      /*Card(
      color: Color(0xffb9e3f5),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Color(0xffb9e3f5),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 5,),
              Image.asset(image,width: 60,height: 60,),
              SizedBox(height: 10,),
              Text(title,style: robotoBold.copyWith(color:Color(0xff255946),fontSize: Dimensions.fontSizeLarge ),),
              SizedBox(height: 3,),
              Text(description,textAlign:TextAlign.justify,style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall ),)
            ],
          ),
        ),
      ),
    )*/;
  }
}
