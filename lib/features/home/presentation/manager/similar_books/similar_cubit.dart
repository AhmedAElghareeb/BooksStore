import 'package:books_app/features/home/presentation/manager/similar_books/similar_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksStates());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(
      SimilarBooksLoading(),
    );

    var response = await homeRepo.fetchSimilarBooks(
      category: category,
    );
    response.fold(
      (failure) {
        emit(
          SimilarBooksFailure(
            failure.msg,
          ),
        );
      },
      (books) {
        emit(
          SimilarBooksSuccess(
            books,
          ),
        );
      },
    );
  }
}
