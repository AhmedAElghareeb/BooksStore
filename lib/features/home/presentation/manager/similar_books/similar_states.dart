import '../../../data/models/books_model/book_model.dart';

class SimilarBooksStates {}

class SimilarBooksLoading extends SimilarBooksStates {}

class SimilarBooksFailure extends SimilarBooksStates {
  final String erMsg;

  SimilarBooksFailure(this.erMsg);
}

class SimilarBooksSuccess extends SimilarBooksStates {
  final List<BookModel> booksData;

  SimilarBooksSuccess(this.booksData);
}
