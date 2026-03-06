import 'package:clean_architecture/config/failure/failure.dart';
import 'package:clean_architecture/modules/home/data/data_source/home_local_data_source.dart';
import 'package:clean_architecture/modules/home/data/data_source/home_remote_data_source.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/modules/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> bookList = [];
      bookList = homeLocalDataSource.cacheFeaturedBooks();

      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      bookList = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> bookList = [];
      bookList = homeLocalDataSource.cacheNewestBooks();

      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      bookList = await homeRemoteDataSource.fetchNewestBooks();
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
