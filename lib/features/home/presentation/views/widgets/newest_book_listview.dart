import 'package:books_app/core/widgets/custom_error.dart';
import 'package:books_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'newest_book_item.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
              child: NewestBooksListViewItem(
                bookModel: state.booksData[index],
              ),
            ),
            itemCount: state.booksData.length,
            padding: EdgeInsetsDirectional.zero,
          );
        } else if (state is NewestBooksFailure) {
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
