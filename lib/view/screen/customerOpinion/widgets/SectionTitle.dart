import 'package:flutter/material.dart';
import 'package:pustichal/util/styles.dart';

class SetionTitleForForm extends StatelessWidget {
  final String title;
  const SetionTitleForForm({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0,top: 20,bottom: 10),
        child:RichText(
          text: TextSpan(
              text: '$title',
              style: robotoBold.copyWith(
                  color: Colors.black,  fontSize: 14),
              children: [
                TextSpan(
                    text: ' *',
                    style: robotoBold.copyWith(color: Colors.red))
              ]),

        ),
      ),
    );
  }
}
