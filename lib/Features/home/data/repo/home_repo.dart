import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String categories});
}
