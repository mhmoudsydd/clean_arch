import 'package:clean_architecture/config/api_service/api_service.dart';
import 'package:clean_architecture/config/constant.dart';
import 'package:clean_architecture/config/functions/cache_books.dart';
import 'package:clean_architecture/modules/home/data/models/book_model/book_model.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
   Future<List<BookEntity>> fetchFeaturedBooks();
   Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>>fetchFeaturedBooks()async {
    var data=await apiService.get(endPoint: 'volumes?filter=free-ebooks&q=programming');
    List<BookEntity> books = getBookList(data);
    cacheBoxData(books,kFeaturedBox);
    return books;
  }

 



  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(endPoint: 'volumes?filter=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books = getBookList(data);
    cacheBoxData(books, kNewestBox);
    return books;
  }

    List<BookEntity> getBookList(Map<String, dynamic> data) {
       List<BookEntity> books=[];
    for(var bookMap in data['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}