
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';

sealed class NewestBookState {}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  List<BookEntity> bookList;

  NewestBookSuccess(this.bookList);
}

final class NewestBookFailure extends NewestBookState {
  final String errorMessage;

  NewestBookFailure(this.errorMessage);
}
