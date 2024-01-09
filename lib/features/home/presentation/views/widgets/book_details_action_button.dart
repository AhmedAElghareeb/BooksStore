import 'package:books_app/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsActionButton extends StatelessWidget {
  const BookDetailsActionButton({super.key});

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
              text: "19.99",
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
              text: "Free preview",
              fontSize: 16.sp,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(
                  15.r,
                ),
                bottomEnd: Radius.circular(
                  15.r,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
