import 'package:bloc/bloc.dart';
import 'package:clean_architecture/config/debug/logger.dart';
import 'package:clean_architecture/modules/home/domain/use_cases/fetch_newest_book_use_case.dart';
import 'package:clean_architecture/modules/home/presentation/manager/cubit/newest_book_state.dart';


class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.newestBookUseCase) : super(NewestBookInitial());
  final FetchNewestBookUseCase newestBookUseCase;

    Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await newestBookUseCase.call();
    result.fold(
      (failure) {
        emit(NewestBookFailure(failure.message));
                failure.message.error;

      },
      (right) {
        emit(NewestBookSuccess(right));
      },
    );
  }
}
