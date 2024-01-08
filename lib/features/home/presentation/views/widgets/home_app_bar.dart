import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: 40.h,
          bottom: 20.h
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsPaths.logo,
            height: 18.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24.r,
            ),
          ),
        ],
      ),
    );
  }
}