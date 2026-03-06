import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void cacheBoxData(List<BookEntity> books,String boxName) {
    var box=Hive.box(boxName);
    box.addAll(books);
  }