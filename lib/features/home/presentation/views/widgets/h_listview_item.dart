import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class HListViewItem extends StatelessWidget {
  const HListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(14.r),
          image: const DecorationImage(
            image: AssetImage(AssetsPaths.test),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
