import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/utils/api_helper.dart';
import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiHelper apiHelper;

  HomeRepoImpl(this.apiHelper);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiHelper.fetch(
        endPoint:
            "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(
            item,
          ),
        );
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
