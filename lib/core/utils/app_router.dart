import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/manager/similar_books/similar_cubit.dart';
import 'package:books_app/features/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:books_app/features/splash/presentation/views/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: "/homeView",
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: "/bookDetailsView",
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: "/searchView",
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
