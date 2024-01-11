part of 'featured_books_cubit.dart';

class FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String erMsg;

  FeaturedBooksFailure(this.erMsg);
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> booksData;

  FeaturedBooksSuccess(this.booksData);
}
