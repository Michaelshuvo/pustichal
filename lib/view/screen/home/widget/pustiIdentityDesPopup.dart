import 'package:flutter/material.dart';
import 'package:pustichal/data/model/response/HomePageModel.dart';
import 'package:pustichal/util/styles.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class PustiIdentityPopUp extends StatelessWidget {
  final AboutUs aboutUs;
  const PustiIdentityPopUp({Key? key, required this.aboutUs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 5,
      backgroundColor: Colors.white,

      child: Container(
        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${aboutUs!.title??" "}',textAlign:TextAlign.left,style: robotoBold.copyWith(fontSize:20,color: Color(0xffC12736)),),
            /* Container(
                                             height: 200,
                                             child: HtmlWidget(
                                                homeController.aboutUs!.description!,
                                              ),
                                            ),*/
            SizedBox(height: 10,),
            HtmlWidget(

              aboutUs.description!,

            )

            //Expanded(child: Text('${aboutUs!.description??" "}',textAlign: TextAlign.justify,style: robotoRegular.copyWith(fontSize:12,color: Colors.white),))

          ],),
      ),
    ); 
  }
}
