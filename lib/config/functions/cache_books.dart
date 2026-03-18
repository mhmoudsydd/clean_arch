import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void cacheBoxData(List<BookEntity> books, String boxName) {
  if (Hive.isBoxOpen(boxName)) {
    var box = Hive.box<BookEntity>(boxName);
    box.addAll(books);
  } else {
    throw Exception('Hive box "$boxName" is not open. Ensure the box is opened in main() before calling this function.');
  }
}