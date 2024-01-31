import 'package:books_app/core/widgets/custom_error.dart';
import 'package:books_app/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'book_image_item.dart';

class BooksListViewHorizontal extends StatelessWidget {
  const BooksListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                      "/bookDetailsView",
                      extra: state.booksData[index]
                  );
                },
                child: BookImageItem(
                  imageUrl: state.booksData[index].volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
              itemCount: state.booksData.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(
            errorMessage: state.erMsg,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
