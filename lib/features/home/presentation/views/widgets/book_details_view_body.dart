import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_details_action_button.dart';
import 'book_details_app_bar.dart';
import 'book_image_item.dart';
import 'book_rating.dart';
import 'books_you_can_like_list.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 77.w),
            child: const BookImageItem(),
          ),
          SizedBox(
            height: 40.h,
          ),
          const Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 6.h,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 37.h,
          ),
          const BookDetailsActionButton(),
          SizedBox(
            height: 49.h,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const BookYouCanLikesList(),
        ],
      ),
    );
  }
}


