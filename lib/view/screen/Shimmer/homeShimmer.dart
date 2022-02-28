import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pustichal/util/dimensions.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
class ProductShimmer extends StatelessWidget {
  final bool isEnabled;
  final bool isRestaurant;
  final bool hasDivider;
  ProductShimmer({required this.isEnabled, required this.hasDivider, this.isRestaurant = false});

  @override
  Widget build(BuildContext context) {


    return Shimmer(
      duration: Duration(seconds: 5),
      interval: Duration(seconds: 1),
      colorOpacity: 0.6,
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:EdgeInsets.all(20),
            height:  200, width: double.infinity,
            decoration: BoxDecoration(

              color: Colors.grey[100],
            ),
            child: Row(
              children: [
                Expanded(
                  flex:3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        height: 10,width: 200,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 10,width: 200,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 10,width: 150,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 10,width: 100,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ), 
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 10,width: 80,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300]
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300],

                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],

                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],

                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300],

                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],

                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300],

                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}