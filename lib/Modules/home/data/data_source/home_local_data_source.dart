import 'package:clean_architecture/config/constant.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> cacheFeaturedBooks();
  List<BookEntity> cacheNewestBooks();
  
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> cacheFeaturedBooks() {
    var box=Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> cacheNewestBooks() {
    var box=Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
