import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/home/data/models/books_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}