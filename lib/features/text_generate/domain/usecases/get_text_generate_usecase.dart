import 'package:asaalne/core/error/failur.dart';
import 'package:asaalne/core/usecase/base_usecase.dart';
import 'package:asaalne/features/text_generate/domain/repositories/text_generate_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetTextGenerateUseCase
    extends BaseUseCase<String, GetTextGenerateParams> {
  final TextGenerateRepository textGenerateRepository;
  const GetTextGenerateUseCase({required this.textGenerateRepository});

  @override
  Future<Either<Failure, String>> call(GetTextGenerateParams params) async =>
      await textGenerateRepository.getTextGenerate(params);
}

class GetTextGenerateParams extends Equatable {
  final String query;
  const GetTextGenerateParams({required this.query});

  @override
  List<Object?> get props => [query];
}
