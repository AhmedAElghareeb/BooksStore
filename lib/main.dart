import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

void main() {
  serviceLocator();
  runApp(const BooksStore());
}

class BooksStore extends StatelessWidget {
  const BooksStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          400,
          800,
        ),
        builder: (context, child) => MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: primaryColor,
          ),
        ),
      ),
    );
  }
}
