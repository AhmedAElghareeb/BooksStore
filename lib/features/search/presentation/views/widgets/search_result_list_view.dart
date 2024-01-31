import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/views/widgets/newest_book_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
        child: Container(),
        //BookListViewItem(),
      ),
      itemCount: 10,
      padding: EdgeInsetsDirectional.zero,
    );
  }
}
