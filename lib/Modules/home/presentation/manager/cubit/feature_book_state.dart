part of 'feature_book_cubit.dart';

sealed class FeatureBookState {}


final class FeaturedBookInitial extends FeatureBookState {}

final class FeaturedBookLoading extends FeatureBookState {}

final class FeaturedBookSuccess extends FeatureBookState {
  List<BookEntity> bookList;

  FeaturedBookSuccess(this.bookList);
}

final class FeaturedBookFailure extends FeatureBookState {
  final String errorMessage;

  FeaturedBookFailure(this.errorMessage);
}
