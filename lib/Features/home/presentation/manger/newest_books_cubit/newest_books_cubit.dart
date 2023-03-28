import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repo/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewBooks();
    result.fold(
      (failure) => emit(
        NewestBooksError(failure.errorMessage.toString()),
      ),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
