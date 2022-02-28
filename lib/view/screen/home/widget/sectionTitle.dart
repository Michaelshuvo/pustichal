import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10),
      child:Text(title,style: robotoBold.copyWith(color: Color(0xff369EC9), fontSize: Dimensions.fontSizeExtraLarge ),)
      ,
    );
  }
}
