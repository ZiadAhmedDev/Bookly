import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    Either result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (failure) => emit(
        FeatureBooksError(failure.toString()),
      ),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
