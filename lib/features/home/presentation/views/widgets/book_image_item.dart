import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(16.r),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          margin: EdgeInsetsDirectional.symmetric(
            horizontal: 5.w
          ),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.question_mark_sharp,),
            placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
