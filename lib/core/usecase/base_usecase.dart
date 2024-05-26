import 'package:asaalne/core/error/failur.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
  const BaseUseCase();
}
