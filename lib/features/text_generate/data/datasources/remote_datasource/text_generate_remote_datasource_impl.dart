import 'dart:developer';
import 'dart:io';

import 'package:asaalne/core/error/error_model.dart';
import 'package:asaalne/core/error/exceptions.dart';
import 'package:asaalne/features/text_generate/data/datasources/remote_datasource/text_generate_reomte_datasource.dart';
import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class TextGenerateRemoteDataSourceImpl implements TextGenerateRemoteDataSource {
  @override
  Future<String> getTextGenerate(GetTextGenerateParams params) async {
    try {
      var apiKey = "api";

      final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
      final content = [Content.text(params.query)];
      final response = await model.generateContent(content);
      return response.text.toString();
    } catch (exception) {
      throw ServerExceptions(ErrorModel(message: exception.toString()));
    }
  }
}
