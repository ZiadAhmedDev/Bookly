import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewBooks() async {
    try {
      var bookData = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Finance');
      List<BookModel> books = [];
      for (var item in bookData['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(e.toString());
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var bookData = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Marketing');
      List<BookModel> books = [];
      for (var item in bookData['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(e.toString());
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String categories}) async {
    try {
      var bookData = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevant&q=subject:$categories');
      List<BookModel> books = [];
      for (var item in bookData['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(e.toString());
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
