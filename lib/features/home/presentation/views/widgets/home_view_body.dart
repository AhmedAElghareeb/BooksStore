import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'newest_book_listview.dart';
import 'home_app_bar.dart';
import 'horizontal_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 20.w
                ),
                child: const HomeAppBar(),
              ),
              const BooksListViewHorizontal(),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 20.w
                ),
                child: const Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 20.w
            ),
            child: const NewestBooksList(),
          ),
        ),
      ],
    );
  }
}


