import 'package:flutter/material.dart';
import 'package:pustichal/controller/CustomerOpinionController.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/util/styles.dart';
import 'package:get/get.dart';
import 'package:pustichal/view/base/custom_button.dart';
import 'package:pustichal/view/base/custom_snackbar.dart';
import 'package:pustichal/view/base/custom_text_field.dart';
import 'package:pustichal/util/styles.dart';
import 'package:pustichal/view/screen/customerOpinion/widgets/SectionTitle.dart';
import 'package:pustichal/view/screen/home/widget/sectionTitle.dart';


class CustomerOpinonScreen extends StatefulWidget {
  const CustomerOpinonScreen({Key? key}) : super(key: key);

  @override
  _CustomerOpinonState createState() => _CustomerOpinonState();
}

class _CustomerOpinonState extends State<CustomerOpinonScreen> {




  TextEditingController nameContriller=TextEditingController();
  TextEditingController ageContriller=TextEditingController();
  TextEditingController buyContriller=TextEditingController();
  FocusNode nameFocus=FocusNode();
  FocusNode ageFocus=FocusNode();
  FocusNode buyFocus=FocusNode();
  String? _gender;
  String? _take;
  String? _yes;
  String? _customerType;
  String? _buingType;

  //spinner value====
    String? ocapationValue;
    String? ricetypeValue;
    String? ricepackateValue;
    String? whybuyRiceValue;
    String? distanseFromhomeVAlue;
    String? whereFromListenvalue;


   //=======================

  var ocapationlist = [
  "চাকুরী",
  "ব্যবসা",
  "ছাত্র/ছত্রী",
  "গৃহিণী",
  "বেকার",
 "অন্যান্য",
  ];

  var riceType = [
    "মিনিকেট",
    "নাজিরশাইল",
    "কাজল",
    "বারি",
    "অন্যান্য"
  ];
  var customerType = [
    "পুরাতন কাস্টমার",
    "নতুন কাস্টমার",

  ];
  var packate=[
    "২ কেজি",
    "৫ কেজি",
    "১০ কেজি",
    "১৫ কেজি",
    "২০ কেজি",
    "২৫ কেজি",
    "৩০ কেজি",
    "৩৫ কেজি",
    "৪০ কেজি",
    "৪৫ কেজি",
  ];
  var whybuyRice=[
    "পুষ্টি চালে উপস্থিত ৬ টি অনুপুষ্টি",
    "পুষ্টি চাল তৈরীর প্রক্রিয়া",
    "পুষ্টি চালের উপকারিতা",

  ];
  var distanseFromhomeList=[
    "১ কিঃমিঃ এর মধ্যে",
    "২ কিঃমিঃ বা এর উর্ধে",
    "৫ কিঃমিঃ বা এর উর্ধে",

  ];
  var whereFromListenList=[
    "সামাজিক যোগাযোগ মাধ্যম ",
    "টিভি বিজ্ঞাপন",
    "রেডিও",
    "লিফলেট",
    "দোকান",
    "এসএমএস",
    "অন্যান্য",
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("মতামত দিন",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),)),
      ),
      body: SafeArea(
        child: GetBuilder<CustomerOpinonController>(

          builder: (customerController) {
            return Container(
              padding: EdgeInsets.only(top:30,left: 10,right: 10,),
              child: ListView(
              children: [
                CustomTextField(
                  hintText: "কাস্টমারের নাম",
                  controller: nameContriller,

                  focusNode: nameFocus,

                  onChanged: () {  },
                  title: 'কাস্টমারের নাম',

                ),
                SetionTitleForForm(title: "কাস্টমারের লিঙ্গ"),
                Row(
                  children: [
                    Expanded(

                      child: Container(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: "পুরুষ",
                              groupValue: _gender,
                              onChanged: (String? value){
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                            Text("পুরুষ",style: robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child:Row(
                          children: [
                            Radio<String>(
                              value: "নারী",
                              groupValue: _gender,
                              onChanged: (String? value){
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                            Text("নারী",style: robotoRegular.copyWith(fontSize: 12),),
                          ],
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child:Row(
                          children: [
                            Radio<String>(
                              value: "অন্যান্য",
                              groupValue: _gender,
                              onChanged: (String? value){
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                            Text("অন্যান্য",style: robotoRegular.copyWith(fontSize: 12),),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: ageContriller,
                  hintText: "কাস্টমারের বয়স",
                  focusNode: ageFocus,

                  onChanged: () {  },
                  title: 'কাস্টমারের বয়স',

                ),
                SetionTitleForForm(title: "কাস্টমারের পেশা"),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: DropdownButton<String>(
                    value: ocapationValue,
                    items: ocapationlist.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value, style: robotoRegular.copyWith(
                              fontSize: 12, color: Colors.black),),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // archiveController.getArchiveList(widget.date,menus.indexOf())
                      ocapationValue = value!;
                      setState(() {

                      });
                    },
                    isExpanded: true,
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('সিলেক্ট করুন', style: robotoRegular.copyWith(
                          fontSize: 12, color: Colors.black),),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                SetionTitleForForm(title: "কাস্টমারের ধরণ"),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:Row(children:[
                          Radio<String>(
                            value: "পুরাতন কাস্টমার",
                            groupValue: _customerType,
                            onChanged: (String? value){
                              setState(() {
                                _customerType = value!;
                              });
                            },
                          ),
                        Text("পুরাতন কাস্টমার",style:robotoRegular.copyWith(fontSize: 12))
                       ]

                        ),

                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: "নতুন কাস্টমার",
                              groupValue: _customerType,
                              onChanged: (String? value){
                                setState(() {
                                  _customerType = value!;
                                });
                              },
                            ),
                            Text("নতুন কাস্টমার",style:robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),

               /* CustomTextField(
                  controller: buyContriller,

                  focusNode: buyFocus,

                  onChanged: () {  },
                  title: 'এ পর্যন্ত কতবার পুষ্টীচাল কিনেছেন?',

                ),*/
              SetionTitleForForm(title: "কোন ধরনের চাল খেতে পছন্দ করেন?"),

               Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child: DropdownButton<String>(
                  value: ricetypeValue,
                  items: riceType.map((String value) {
                    return DropdownMenuItem<String>(

                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(value, style: robotoRegular.copyWith(
                            fontSize: 12, color: Colors.black),),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // archiveController.getArchiveList(widget.date,menus.indexOf())
                    ricetypeValue = value!;
                    setState(() {

                    });
                  },
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('চাল নির্বাচন করুন ', style: robotoRegular.copyWith(
                        fontSize: 12, color: Colors.black),),
                  ),
                ),
              ),
                SetionTitleForForm(title: "কিভাবে চাল কিনতে পছন্দ করেন?"),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:Row(
                          children: [
                            Radio<String>(
                              value: "প্যাকেটজাত",
                              groupValue: _buingType,
                              onChanged: (String? value){
                                setState(() {
                                  _buingType = value!;
                                });
                              },
                            ),
                            Text("প্যাকেটজাত ",style:robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: "খোলা",
                              groupValue: _buingType,
                              onChanged: (String? value){
                                setState(() {
                                  _buingType = value!;
                                });
                              },
                            ),
                            Text("খোলা",style:robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),

                SetionTitleForForm(title: "কিভাবে চাল নিতে পছন্দ করেন?"),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:Row(
                          children: [
                            Radio<String>(
                              value: "হোম ডেলিভারি ",
                              groupValue: _take,
                              onChanged: (String? value){
                                setState(() {
                                  _take = value!;
                                });
                              },
                            ),
                            Text("হোম ডেলিভারি ",style:robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: "দোকানে গিয়ে",
                              groupValue: _take,
                              onChanged: (String? value){
                                setState(() {
                                  _take = value!;
                                });
                              },
                            ),
                            Text("দোকানে গিয়ে",style:robotoRegular.copyWith(fontSize: 12)),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                SetionTitleForForm(title: "চাল কেনার ক্ষেত্রে আপনার কোন প্যাকেটটি পছন্দ ?"),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: DropdownButton<String>(
                    value: ricepackateValue,
                    items: packate.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value, style: robotoRegular.copyWith(
                              fontSize: 12, color: Colors.black),),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // archiveController.getArchiveList(widget.date,menus.indexOf())
                      ricepackateValue = value!;
                      setState(() {

                      });
                    },
                    isExpanded: true,
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('সিলেক্ট করুন ', style: robotoRegular.copyWith(
                          fontSize: 12, color: Colors.black),),
                    ),
                  ),
                ),
                SetionTitleForForm(title: "কোন তথ্যটি আপনাকে পুষ্টি চাল কিনতে উদ্বুদ্ধ করেছে?"),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: DropdownButton<String>(
                    value: whybuyRiceValue,
                    items: whybuyRice.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value, style: robotoRegular.copyWith(
                              fontSize: 12, color: Colors.black),),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // archiveController.getArchiveList(widget.date,menus.indexOf())
                      whybuyRiceValue = value!;
                      setState(() {

                      });
                    },
                    isExpanded: true,
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('সিলেক্ট করুন ', style: robotoRegular.copyWith(
                          fontSize: 12, color: Colors.black),),
                    ),
                  ),
                ),
                SetionTitleForForm(title: "পুষ্টি চাল বিষয়ে আপনি কোথায় থেকে জেনেছেন?"),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: DropdownButton<String>(
                    value: whereFromListenvalue,
                    items: whereFromListenList.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value, style: robotoRegular.copyWith(
                              fontSize: 12, color: Colors.black),),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // archiveController.getArchiveList(widget.date,menus.indexOf())
                      whereFromListenvalue = value!;
                      setState(() {

                      });
                    },
                    isExpanded: true,
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('সিলেক্ট করুন ', style: robotoRegular.copyWith(
                          fontSize: 12, color: Colors.black),),
                    ),
                  ),
                ),

                SetionTitleForForm(title: "আপনার বাসা থেকে পুষ্টি চালের দোকান কতদূর? "),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: DropdownButton<String>(
                    value: distanseFromhomeVAlue,
                    items: distanseFromhomeList.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value, style: robotoRegular.copyWith(
                              fontSize: 12, color: Colors.black),),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // archiveController.getArchiveList(widget.date,menus.indexOf())
                      distanseFromhomeVAlue = value!;
                      setState(() {

                      });
                    },
                    isExpanded: true,
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('সিলেক্ট করুন ', style: robotoRegular.copyWith(
                          fontSize: 12, color: Colors.black),),
                    ),
                  ),
                ),

                SetionTitleForForm(title: "আপনি কি ভবিষ্যতে পুষ্টি চাল সম্পর্কে আরো জানতে চান?"),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("হ্যা"),
                        leading: Radio<String>(
                          value: "হ্যা",
                          groupValue: _yes,
                          onChanged: (String? value){
                            setState(() {
                              _yes = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text("না"),
                        leading: Radio<String>(
                          value: "না",
                          groupValue: _yes,
                          onChanged: (String? value){
                            setState(() {
                              _yes = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
               SizedBox(height: 30,),
              customerController.isLoading?Center(child: CircularProgressIndicator(),): Padding(
                 padding: const EdgeInsets.only(left: 90.0,right: 90),
                 child: CustomButton(onPressed: (){
                   datavalidation(customerController);
                 }, buttonText: "SUBMIT"),
               ),
                SizedBox(height: 20,),
              ],
            ),);
          }
        ),
      ),
    );
  }
  void datavalidation(CustomerOpinonController controller){
    String name=nameContriller.text.toString();
    String age=ageContriller.text.toString();



    if(name.isEmpty){
      nameFocus.requestFocus();
      showCustomSnackBar("দয়া করে কাস্টমারের নাম লিখুন ");
    }
    else if(_gender==null){
      showCustomSnackBar("দয়া করে কাস্টমারের লিঙ্গ সিলেক্ট করুন");
    }
    else if(age.isEmpty){
      showCustomSnackBar("দয়া করে কাস্টমারের বয়স লিখুন");
    }
    else if(ocapationValue==null){
      showCustomSnackBar("দয়া করে কাস্টমারের পেশা সিলেক্ট করুন ");
    }
    else if(_customerType==null){
      showCustomSnackBar("দয়া করে কাস্টমারের ধরন সিলেক্ট করুন ");
    }
    else if(ricetypeValue==null){
      showCustomSnackBar("কোন ধরনের চাল খেতে পছন্দ করেন");
    }
    else if(_buingType==null){
      showCustomSnackBar("কিভাবে চাল কিনতে পছন্দ করেন সিলেক্ট করুন");
    }
    else if(_take==null){
      showCustomSnackBar("কিভাবে চাল নিতে পছন্দ করেন সিলেক্ট করুন");
    }
    else if(ricepackateValue==null){
      showCustomSnackBar("চাল কেনার ক্ষেত্রে আপনার কোন প্যাকেটটি পছন্দ সিলেক্ট করুন");
    }
    else if(whybuyRiceValue==null){
      showCustomSnackBar("কোন তথ্যটি আপনাকে পুষ্টি চাল কিনতে উদ্বুদ্ধ করেছে সিলেক্ট করুন");
    }
    else if(whereFromListenvalue==null){
      showCustomSnackBar("পুষ্টি চাল বিষয়ে আপনি কোথায় থেকে জেনেছেন সিলেক্ট করুন");
    }
    else if(distanseFromhomeVAlue==null){
      showCustomSnackBar("আপনার বাসা থেকে পুষ্টি চালের দোকান কতদূর, সিলেক্ট করুন");
    }else if(_yes==null){
      showCustomSnackBar("আপনি কি ভবিষ্যতে পুষ্টি চাল সম্পর্কে আরো জানতে চান, সিলেক্ট করুন");
    }
    else{
      CustomerOpinionBody customerOpinionBody=new CustomerOpinionBody(
          name:name,
          gender:_gender,
          distanceOfPushtichalShop: distanseFromhomeVAlue,
          age:age,
          customerType:_customerType.toString() ,
          occupation:ocapationValue ,
          doYouWantToKnowPushtichalInFuture:_yes.toString(),
          howDoYouLikeToBuyRice:_buingType.toString(),
          howDoYouLikeToTakeRice: _take.toString(),
          knowingFromPushtichal: whereFromListenvalue,
          whatKindOfRiceDoYouLike: ricetypeValue,
          whichInfoExictedToBuyPushtichal: whybuyRiceValue,
          whichPacketDoYouLike: ricepackateValue,

      );

       // print(customerOpinionBody.toJson().toString());
     controller.CustomerOpinionform(customerOpinionBody);
    }

  }
}
