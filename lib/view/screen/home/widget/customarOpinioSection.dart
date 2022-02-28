import 'package:flutter/material.dart';
import 'package:pustichal/controller/DashBoardController.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';
import 'package:get/get.dart';
import 'package:pustichal/view/screen/dashBoard/DashBoard.dart';
import 'package:pustichal/view/screen/home/widget/ShakeWidget.dart';

class CustomerOpinionSection extends StatelessWidget {
  const CustomerOpinionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xfff7c35f),
            borderRadius: BorderRadius.all(Radius.circular(35))
      ),
      child: Row(
        children: [
       
          Expanded(
              flex:5,child: Text("পুষ্টিচাল সম্পর্কে আপনার মতামত প্রদান করুন",maxLines:2,style: robotoBold.copyWith(color: Colors.white, fontSize: Dimensions.fontSizeDefault ),))
          ,  SizedBox(width: 5,),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ShakeWidget(
                child: InkWell(
                  onTap: (){
                Get.find<DashBoardController>().setPage(1);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(25)),
                       color: Color(0xff4FAD66)
                     ),
                    child:Center(child: Row(
                      children: [
                        Expanded(
                            flex:1,child: Padding(
                              padding: const EdgeInsets.only(bottom:5),
                              child: Image.asset("assets/images/customer-question.png",width: 30,height: 30,color: Colors.white,),
                            )),
                        SizedBox(width: 10,),
                        Expanded(
                            flex: 4,
                            child: Text("মতামত দিন",maxLines:2,style: robotoBold.copyWith(fontSize:13,color: Colors.white ),)),
                      ],
                    )) ,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
