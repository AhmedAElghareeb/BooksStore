import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_app_bar.dart';
import 'horizontal_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          const BooksListViewHorizontal(),
          SizedBox(
            height: 49.h,
          ),
          const Text(
            "Best Seller",
            style: Styles.textStyleSemiBold18,
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsPaths.test,
          width: 70.w,
          height: 105.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harry Potter \n and the Goblet of Fire",
            ),
            Text(
              "J.K. Rowling",
            ),
            Row(
              children: [
                Text(
                  "19.99 €",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
