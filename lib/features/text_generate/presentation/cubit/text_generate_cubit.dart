import 'dart:developer';

import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'text_generate_state.dart';

class TextGenerateCubit extends Cubit<TextGenerateState> {
  final GetTextGenerateUseCase getTextGenerateUseCase;
  TextGenerateCubit({
    required this.getTextGenerateUseCase,
  }) : super(TextGenerateInitial());

  final queryTextController = TextEditingController();

  Future<void> getTextGenerate() async {
    if (queryTextController.text.isEmpty) return;
    emit(TextGenerateLoading());
    final result = await getTextGenerateUseCase(
        GetTextGenerateParams(query: queryTextController.text));

    result.fold(
        (errorMessage) =>
            emit(TextGenerateError(errorMessage: errorMessage.message)),
        (textGenerate) => emit(TextGenerateLoaded(textGenerate: textGenerate)));
    queryTextController.clear();
  }
}
