import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageCached extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit fit;
  final String placeholder;
  CustomImageCached({required this.image, this.height, this.width, required this.fit, this.placeholder='assets/image/placeholder.jpg'});

  @override
  Widget build(BuildContext context) {
    print(image);
    return CachedNetworkImage(

      imageUrl:image,
      placeholder: (context, url) =>Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

          image: DecorationImage(

            image: new AssetImage(placeholder),
            fit: fit,

          ),
        ),
      ),


      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

          image: DecorationImage(

            image: imageProvider,
            fit: fit,

          ),
        ),
      ),
      errorWidget: (c, o, s) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

          image: DecorationImage(

            image: new AssetImage(placeholder),
            fit: fit,

          ),
        ),
      ),
    );
  }
}