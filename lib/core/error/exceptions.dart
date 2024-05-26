import 'package:asaalne/core/error/error_model.dart';
import 'package:equatable/equatable.dart';

abstract class Exceptions extends Equatable implements Exception {
  final ErrorModel errorModel;
  const Exceptions(this.errorModel);
  @override
  List<Object?> get props => [errorModel];
}

class ServerExceptions extends Exceptions {
  const ServerExceptions(super.errorModel);
}

class LocalExceptions extends Exceptions {
  const LocalExceptions(super.errorModel);
}
