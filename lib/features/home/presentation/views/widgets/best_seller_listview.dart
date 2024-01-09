import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsDirectional.symmetric(
            vertical: 10.h
        ),
        child: const BestSellerItem(),
      ),
      itemCount: 10,
      padding: EdgeInsetsDirectional.zero,
    );
  }
}