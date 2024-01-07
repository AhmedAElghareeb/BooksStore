import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'features/splash/presentation/views/splash.dart';

void main() {
  runApp(const BooksStore());
}

class BooksStore extends StatelessWidget {
  const BooksStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        400,
        800,
      ),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
        ),
        home: const SplashView(),
      ),
    );
  }
}
