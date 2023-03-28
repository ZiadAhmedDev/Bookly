part of 'fetch_similar_cubit.dart';

abstract class FetchSimilarState extends Equatable {
  const FetchSimilarState();

  @override
  List<Object> get props => [];
}

class FetchSimilarInitial extends FetchSimilarState {}

class FetchSimilarLoading extends FetchSimilarState {}

class FetchSimilarSuccess extends FetchSimilarState {
  final List<BookModel> book;

  const FetchSimilarSuccess(this.book);
}

class FetchSimilarError extends FetchSimilarState {
  final String errorMessage;

  const FetchSimilarError(this.errorMessage);
}
