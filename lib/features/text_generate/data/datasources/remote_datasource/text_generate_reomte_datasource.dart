import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';

abstract class TextGenerateRemoteDataSource {
  Future<String> getTextGenerate(GetTextGenerateParams params);
}
