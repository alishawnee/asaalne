import 'package:asaalne/core/error/failur.dart';
import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class TextGenerateRepository {
  Future<Either<Failure, String>> getTextGenerate(GetTextGenerateParams params);
}
