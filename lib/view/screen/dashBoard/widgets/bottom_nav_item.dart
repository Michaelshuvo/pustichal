
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:pustichal/util/styles.dart';


class BottomNavItem extends StatelessWidget {
 // final IconData iconData;
  final String iconData;
  final String title;
  final Function() onTap;
  final bool isSelected;
  final double height;
  BottomNavItem({required this.iconData, required this.onTap, this.isSelected = false,required this.height, required this.title});

  @override
  Widget build(BuildContext context) {
    double heightp=height+3;
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Image.asset(iconData,color:isSelected?Color(0xfff7c35f): Colors.white, height:isSelected? heightp:height),//
            // Icon(iconData, color: isSelected ?Color(0xFFDCDCDC):Colors.white, size:isSelected?32:25),
            onPressed: onTap,
          ),
          Text(title,style: robotoBold.copyWith(height:0.5,fontSize: Dimensions.fontSizeSmall,color:isSelected?Color(0xfff7c35f): Colors.white),)
        ],
      ),
    );
  }
}
//0xFFDCDCDC