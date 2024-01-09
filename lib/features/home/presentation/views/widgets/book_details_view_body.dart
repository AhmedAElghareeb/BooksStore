import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_details_app_bar.dart';
import 'books_details_section.dart';
import 'similar_books_section.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                const BookDetailsAppBar(),
                const BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 49.h,
                  ),
                ),
                const SimilarBooksSection(),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}






