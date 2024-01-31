import 'package:books_app/core/widgets/button.dart';
import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/functions.dart';

class BookDetailsActionButton extends StatelessWidget {
  const BookDetailsActionButton({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 8.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              bGColor: Colors.white,
              textColor: Colors.black,
              text: "Free",
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                  15.r,
                ),
                bottomStart: Radius.circular(
                  15.r,
                ),
              ),
            ),
          ),
          Expanded(
            child: AppButton(
              bGColor: const Color(
                0xffEF8262,
              ),
              textColor: Colors.white,
              text: getText(bookModel),
              fontSize: 16.sp,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(
                  15.r,
                ),
                bottomEnd: Radius.circular(
                  15.r,
                ),
              ),
              onTap: () {
                appLaunchUrl(
                  context,
                  bookModel.volumeInfo.previewLink!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "Preview";
    }
  }
}
