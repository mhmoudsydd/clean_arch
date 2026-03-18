import 'package:bloc/bloc.dart';
import 'package:clean_architecture/config/debug/logger.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/modules/home/domain/use_cases/fetch_featured_book_use_case.dart';
import 'package:clean_architecture/modules/home/domain/use_cases/fetch_newest_book_use_case.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.featureBookUseCase) : super(FeaturedBookInitial());

  final FetchFeaturedBookUseCase featureBookUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await featureBookUseCase.call();
    result.fold(
      (failure) {
        emit(FeaturedBookFailure(failure.message));
        failure.message.error;
      },
      (right) {
        emit(FeaturedBookSuccess(right));
      },
    );
  }


}
