import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/Features/home/presentation/views/widgets/list_builder_card_view.dart';
import 'package:equatable/equatable.dart';

part 'fetch_similar_state.dart';

class FetchSimilarCubit extends Cubit<FetchSimilarState> {
  FetchSimilarCubit(this.homeRepo) : super(FetchSimilarInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String categories}) async {
    emit(FetchSimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(categories: categories);
    result.fold(
      (failure) => emit(
        FetchSimilarError(failure.errorMessage.toString()),
      ),
      (books) => emit(FetchSimilarSuccess(books)),
    );
  }
}
