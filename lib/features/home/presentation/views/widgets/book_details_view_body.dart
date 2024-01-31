import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_details_app_bar.dart';
import 'books_details_section.dart';
import 'similar_books_section.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const BookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
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






