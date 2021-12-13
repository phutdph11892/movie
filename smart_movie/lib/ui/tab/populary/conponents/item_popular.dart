

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smart_movie/data/service/data/popular/data_popular_list.dart';
import 'package:smart_movie/utils/common/image.dart';

class ItemCard extends StatelessWidget {
  final Result? result;
  final VoidCallback?  press;

  const ItemCard({Key? key, this.result,  this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? title = result!.title;
    String? t;
    if(title!.length<20){
      t=title;
    }else{
      t= title.substring(0,20)+"...";
    }
    return GestureDetector(
      onTap: press,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding:const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6)),
                child: Hero(
                    tag: "${result!.id}",
                    child: buildContainerPhotoBackground(result!)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin / 4),
                child: Text(
                  "$t",
                  style: const TextStyle(color: KTextLightColor,fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                   "Date ${result!.release_date}",
                  style: const TextStyle(fontWeight: FontWeight.bold,color: KTextLightColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }



  Widget buildContainerPhotoBackground(Result result) {
    return buildPosterPhoto("${result.backdrop_path}");
  }

  CachedNetworkImage buildPosterPhoto(String imageName) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      imageUrl: imageUrlW500(imageName),
      imageBuilder: (context, imageProvider) => Container(
        width: double.maxFinite,
        height: _heightCardView,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(_radiuscardView),
            bottom: Radius.circular(_radiuscardView),
          ),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
const _heightCardView = 250.0;
const _radiuscardView = 3.0;
const KDefaultPaddin = 20.0;
const KTextColor = Color(0xFF535353);
const KTextLightColor = Color(0xFFACACAC);