part of 'text_generate_cubit.dart';

abstract class TextGenerateState extends Equatable {
  const TextGenerateState();

  @override
  List<Object> get props => [];
}

class TextGenerateInitial extends TextGenerateState {}

class TextGenerateLoading extends TextGenerateState {}

class TextGenerateLoaded extends TextGenerateState {
  final String textGenerate;
  const TextGenerateLoaded({required this.textGenerate});
  @override
  List<Object> get props => [textGenerate];
}

class TextGenerateError extends TextGenerateState {
  final String errorMessage;
  const TextGenerateError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
