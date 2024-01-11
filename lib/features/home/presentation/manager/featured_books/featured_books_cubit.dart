import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/books_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksStates());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      FeaturedBooksLoading(),
    );

    var response = await homeRepo.fetchFeaturedBooks();
    response.fold(
      (failure) {
        emit(
          FeaturedBooksFailure(
            failure.msg,
          ),
        );
      },
      (books) {
        emit(
          FeaturedBooksSuccess(
            books,
          ),
        );
      },
    );
  }
}
