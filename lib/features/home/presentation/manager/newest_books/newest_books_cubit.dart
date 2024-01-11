import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/books_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksStates());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      NewestBooksLoading(),
    );

    var response = await homeRepo.fetchNewestBooks();
    response.fold(
      (failure) {
        emit(
          NewestBooksFailure(
            failure.msg,
          ),
        );
      },
      (books) {
        emit(
          NewestBooksSuccess(
            books,
          ),
        );
      },
    );
  }
}
