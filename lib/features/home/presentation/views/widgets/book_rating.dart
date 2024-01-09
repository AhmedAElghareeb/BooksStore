import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(
            0xffFFDD4F,
          ),
        ),
        SizedBox(
          width: 6.3.w,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070,),
          ),
        ),
      ],
    );
  }
}