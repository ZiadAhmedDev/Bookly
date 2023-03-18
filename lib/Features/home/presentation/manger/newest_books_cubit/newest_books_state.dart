part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newBooks;
  const NewestBooksSuccess(this.newBooks);
}

class NewestBooksError extends NewestBooksState {
  final String errorMessage;

  const NewestBooksError(this.errorMessage);
}
