import 'package:clean_architecture/config/failure/failure.dart';
import 'package:clean_architecture/config/use_case/use_case.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/modules/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBookUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;

  FetchNewestBookUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? param]) {
    //handle any permission(use case)
    return homeRepo.fetchNewestBooks();
  }
}
