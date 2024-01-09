import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.bGColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });

  final Color bGColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  final BorderRadiusDirectional? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: bGColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadiusDirectional.circular(
                  15.r,
                ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
