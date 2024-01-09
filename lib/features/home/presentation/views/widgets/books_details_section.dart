import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_action_button.dart';
import 'book_image_item.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
