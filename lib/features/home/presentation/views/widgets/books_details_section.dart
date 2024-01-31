import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_action_button.dart';
import 'book_image_item.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 77.w),
          child: BookImageItem(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 6.h,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        SizedBox(
          height: 37.h,
        ),
        BookDetailsActionButton(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
