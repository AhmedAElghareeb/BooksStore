import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'search_result_list_view.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextField(),
          SizedBox(
            height: 16.h,
          ),
          const Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16.h,
          ),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

