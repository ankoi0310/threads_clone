import 'package:fpdart/fpdart.dart';
import 'package:threads_clone/core/error/failure.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}
