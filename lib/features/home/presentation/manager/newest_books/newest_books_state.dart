part of 'newest_books_cubit.dart';

class NewestBooksStates {}

class NewestBooksLoading extends NewestBooksStates {}

class NewestBooksFailure extends NewestBooksStates {
  final String erMsg;

  NewestBooksFailure(this.erMsg);
}

class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> booksData;

  NewestBooksSuccess(this.booksData);
}
