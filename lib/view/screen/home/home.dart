import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pustichal/controller/HomeController.dart';
import 'package:pustichal/controller/SplashController.dart';
import 'package:pustichal/data/model/response/ConfigModel.dart';
import 'package:pustichal/model/sellsPointModel.dart';
import 'package:pustichal/model/vitaminModel.dart';
import 'package:pustichal/util/styles.dart';
import 'package:pustichal/view/base/custom_button.dart';
import 'package:pustichal/view/base/custom_snackbar.dart';
import 'package:pustichal/view/screen/Shimmer/homeShimmer.dart';
import 'package:pustichal/view/screen/home/widget/countWidget.dart';
import 'package:pustichal/view/screen/home/widget/customarOpinioSection.dart';
import 'package:pustichal/view/screen/home/widget/pustiIdentityDesPopup.dart';
import 'package:pustichal/view/screen/home/widget/sectionTitle.dart';
import 'package:pustichal/view/screen/home/widget/sellsPointWidget.dart';
import 'package:pustichal/view/screen/home/widget/vitaminesWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      showCustomSnackBar("Can't open now",isError: true);
    }
  }

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _items = [];
 ConfigModel? configModel;
  List<YoutubePlayerController>? _controllers;
 /*final GlobalKey<AnimatedListState> _keyanimation = GlobalKey();*/
  @override
  void initState() {

    super.initState();
    if(Get.find<HomeController>().homePageModel==null){
      Get.find<HomeController>().homeData();
    }

    configModel=Get.find<SplashController>().configModel;
  }
 /*void _addItem() {
   _items.insert(0, "Item ${_items.length + 1}");
   _keyanimation.currentState!.insertItem(0, duration: const Duration(seconds: 1));
 }*/
  @override
  Widget build(BuildContext context) {
    List<VitaminModel> vitaminModels=[];
    List<SellsPointModel> sellsPointModel=[];

    sellsPointModel.add(new SellsPointModel("কাওরান বাজার",23.7517585,90.3941251)) ;
    sellsPointModel.add(new SellsPointModel("কৃষি মার্কেট",23.7658455,90.3593446)) ;
    sellsPointModel.add(new SellsPointModel("কাপ্তান বাজার",23.7224638,90.41269)) ;
    sellsPointModel.add(new SellsPointModel("তালতলা খিলগাঁ",23.7514663,90.426803)) ;

    vitaminModels.add(new VitaminModel("ভিটামিন এ", "assets/images/v1.png", "রোগ সংক্রমণ প্রতিরোধ করে, চোখের দৃষ্টি ভালো রাখে","#2FC8EC","#1B74BD"));
    vitaminModels.add(new VitaminModel("ভিটামিন বি১", "assets/images/v2.png", "খাদ্য পরিপাকে সহায়তা করে, খাদ্য শক্তি বের করে।","#DFA068","#553935"));
    vitaminModels.add(new VitaminModel("আয়রন", "assets/images/v3.png", "প্রধানত শরীরের লোহিত রক্তকণিকা গঠন করে স্বল্পতা প্রতিরোধ করে","#FA9249","#FC5429"));
    vitaminModels.add(new VitaminModel("ফলিক এসিড", "assets/images/v4.png", "গর্ভস্থ শিশুর জন্ম বিকৃতি কমাতে ফলিক এসিড সাহায্য করে","#C377E6","#7044AF"));
    vitaminModels.add(new VitaminModel("ভভিটামিন বি১২", "assets/images/v5.png", "শরীরের বিভিন্ন গুরুত্বপূর্ণ অঙ্গ-প্রত্যঙ্গ সুগঠিত করে ও রক্তস্বল্পতা দূর করে।","#F84A5E","#E01E2A"));
    vitaminModels.add(new VitaminModel("জিংক", "assets/images/v6.png", "শরীরের ক্ষত শুকানো, ডায়রিয়া ও অন্যান্য সংক্রমণ প্রতিরোধে সহায়তা করে।","#4173E7","#2543B5"));
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("পুষ্টিচাল",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 16),)),
      ),
      body: SafeArea(

          child:SingleChildScrollView(
            child: Container(
              child: GetBuilder<HomeController>(

                builder: (homeController) {


                  if(homeController.videos!=null)
                    {_controllers=homeController.videos!.map<YoutubePlayerController>(
                        (videoId) => YoutubePlayerController(
                      initialVideoId: videoId.url!,
                      flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          disableDragSeek:false
                      ),
                    ),
                  )
                      .toList();}
                  return homeController.isLoading?ProductShimmer(isEnabled: true, isRestaurant: false, hasDivider: true):Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        padding: EdgeInsets.all(10),
                        height: 210,
                        decoration:BoxDecoration(

                          image:DecorationImage(
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.colorBurn),
                            image: NetworkImage(homeController.aboutUs!.image!),
                            fit: BoxFit.cover,
                          )
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex:7,
                              child: Container(
                                child: Center(
                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container()),
                                      Expanded(
                                          flex: 12,
                                          child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          Text('${homeController.aboutUs!.title??" "}',textAlign:TextAlign.left,style: robotoBold.copyWith(fontSize:20,color: Color(0xffC12736)),),
                                        /* Container(
                                           height: 200,
                                           child: HtmlWidget(
                                              homeController.aboutUs!.description!,
                                            ),
                                         ),*/
                                            SizedBox(height: 5,),
                                        Text('${homeController.aboutUs!.description!.substring(3)!??" "}',overflow: TextOverflow.ellipsis,maxLines:4,textAlign: TextAlign.justify,style: robotoRegular.copyWith(fontSize:12,color: Colors.white),)
                                          ,SizedBox(height: 8,),
                                            InkWell(
                                              onTap: (){
                                                Get.dialog(PustiIdentityPopUp(aboutUs: homeController.aboutUs!));
                                              },
                                              child: Container(
                                                height: 35,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context).primaryColor,
                                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                                ),
                                                child: Center(child: Text("আরও জানুন ",style: TextStyle(fontSize: 10,color: Colors.white),)),
                                              ),
                                            )
                                        ],)
                                        ,
                                      )),
                                     Expanded(
                                          flex: 1,
                                          child: Container()),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20),
                                height: 80,
                                width: 80,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  border: Border.all(width: 2, color:Colors.white),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child:  Image.asset('assets/images/logo.png',height: 70,width: 70,),
                              ),
                            )
                          ],
                        ) ,
                      ),
                      SizedBox(height: 20,),
                      /*AnimatedList(
                        shrinkWrap: true,
                        key: _keyanimation,
                        initialItemCount: 0,
                        itemBuilder: (_, index, animation) {

                         return SizeTransition(
                             key: UniqueKey(),
                             sizeFactor: animation,
                             child: CountWidget(title: "পুষ্টি চাল মিশ্রন ফ্যাক্টরি",count:'${configModel!.config!.totalFactory!}',icon: "assets/images/factory.png",));
                      },

                      ),*/

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: [
                          Expanded(flex:1,child: CountWidget(title: "মিশ্রন\nফ্যাক্টরি",count:'${configModel!.config!.totalFactory!}',icon: "assets/images/factory.png",)),
                          //Container(width: 2,height:10,color: Color(0xff6e7673),),
                          Expanded(flex:1,child: CountWidget(title: "কার্নেল\nফ্যাক্টরি",count:'${configModel!.config!.sellingPlace!}',icon: "assets/images/branch.png",)),
                          Expanded(flex:1,child: CountWidget(title: "বার্ষিক\nউৎপাদন",count:'${configModel!.config!.annualProduction!}',icon: "assets/images/annualincome.png",)),
                          Expanded(flex:1,child: CountWidget(title: "সর্বমোট\nগ্রাহক",count:'${configModel!.config!.totalUser!}',icon: "assets/images/allcustomer.png",)),

                        ],),
                      ),
                      SizedBox(height: 20,),
                      SectionTitle(title: "পুষ্টিচালের উপাদান"),
                      SizedBox(height: 15,),
                      Container(
                        child: Column(
                          children: [
                            Row(children: [
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[0].title!,
                                  image: homeController.materials![0].icon!,
                                  description: vitaminModels[0].description!, endColor: HexColor(vitaminModels[0].endColor), startColor: HexColor(vitaminModels[0].startColor),

                                ),
                              ),
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[1].title!,
                                  image: homeController.materials![1].icon!,
                                  description: vitaminModels[1].description!, endColor: HexColor(vitaminModels[1].endColor), startColor: HexColor(vitaminModels[1].startColor),

                                ),
                              )
                            ],),
                            Row(children: [
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[2].title!,
                                  image: homeController.materials![2].icon!,
                                  description: vitaminModels[2].description!, endColor: HexColor(vitaminModels[2].endColor), startColor: HexColor(vitaminModels[2].startColor),

                                ),
                              ),
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[3].title,
                                  image: homeController.materials![3].icon!,
                                  description:vitaminModels[3].description!, endColor: HexColor(vitaminModels[3].endColor), startColor: HexColor(vitaminModels[3].startColor),

                                ),
                              )
                            ],),
                            Row(children: [
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[4].title!,
                                  image: homeController.materials![4].icon!,
                                  description: vitaminModels[4].description!, endColor: HexColor(vitaminModels[4].endColor), startColor: HexColor(vitaminModels[4].startColor),

                                ),
                              ),
                              Expanded(
                                child: VitaminsWidget(title: vitaminModels[5].title!,
                                  image: homeController.materials![5].icon!,
                                  description: vitaminModels[5].description!, endColor: HexColor(vitaminModels[5].endColor), startColor: HexColor(vitaminModels[5].startColor),

                                ),
                              )
                            ],),
                          ],
                        ),
                      ),
                     /* GridView.builder(
                        shrinkWrap:true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: vitaminModels.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          childAspectRatio:3
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return VitaminsWidget(title: vitaminModels[index].title,
                          image: vitaminModels[index].image,
                           description: vitaminModels[index].description, endColor: HexColor(vitaminModels[index].endColor), startColor: HexColor(vitaminModels[index].startColor),

                          );

                        },
                      ),*/

                      SizedBox(height: 30,),
                      SectionTitle(title: "ভিডিও গ্যালারী"),
                      homeController.videos!=null ?Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),

                        height: 270,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 20),
                          child: Stack(

                            children: [

                              Container(
                                height: 200,
                                child: YoutubePlayer(

                                  width: MediaQuery.of(context).size.width/2,

                                  key: ObjectKey(_controllers![0]),
                                  controller: _controllers![0],
                                  actionsPadding: const EdgeInsets.only(left: 16.0,right: 16),
                                  bottomActions: [
                                    /*CurrentPosition(),
                                    const SizedBox(width: 10.0),
                                    ProgressBar(isExpanded: true),
                                    const SizedBox(width: 10.0),
                                    RemainingDuration(),*/
                                    //FullScreenButton(),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 10,
                                  left: 0,
                                  child: Container(

                                      height: 50,
                                      width:MediaQuery.of(context).size.width/2 ,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))

                                      ),
                                      child: Center(child:   Text(homeController.videos![0].title!,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))))

                            ],
                          ),
                        ),
                      ):SizedBox(),


                       SizedBox(height: 30,),
                      SectionTitle(title: "পুষ্টি চালের প্রাপ্তিস্থান "),

                      SizedBox(height: 15,),

                      Container(

                        height: MediaQuery.of(context).size.height/5,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: homeController.locaitons!.length,
                          itemBuilder: (context, i) {

                            return Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: InkWell(
                                onTap: ()=>{
                                  HomeScreen.openMap(sellsPointModel[i].lat, sellsPointModel[i].lang)
                                },
                                  child: SellsPointWidget(title: homeController.locaitons![i].title!)),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomerOpinionSection(),
                      )

                    ],
                  );
                }
              ),
            ),
          ),

      ),
    );
  }
}
