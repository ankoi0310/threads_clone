import 'package:fpdart/fpdart.dart';
import 'package:threads_clone/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef VoidFuture = ResultFuture<Unit>;
typedef JsonData = Map<String, dynamic>;
