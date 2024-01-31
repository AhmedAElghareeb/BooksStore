import 'package:books_app/core/widgets/custom_error.dart';
import 'package:books_app/features/home/presentation/manager/similar_books/similar_cubit.dart';
import 'package:books_app/features/home/presentation/manager/similar_books/similar_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_image_item.dart';

class BookYouCanLikesList extends StatelessWidget {
  const BookYouCanLikesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemBuilder: (context, index) => BookImageItem(
                imageUrl: state.booksData[index].volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              itemCount: state.booksData.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksFailure) {
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
