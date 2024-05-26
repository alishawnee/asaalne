import 'package:asaalne/core/di/main_injection_container.dart' as di;
import 'package:asaalne/features/text_generate/data/datasources/remote_datasource/text_generate_remote_datasource_impl.dart';
import 'package:asaalne/features/text_generate/data/datasources/remote_datasource/text_generate_reomte_datasource.dart';
import 'package:asaalne/features/text_generate/data/repositories/text_generate_repository_impl.dart';
import 'package:asaalne/features/text_generate/domain/repositories/text_generate_repository.dart';
import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';
import 'package:asaalne/features/text_generate/presentation/cubit/text_generate_cubit.dart';

Future<void> textGenerateInjectionContainer() async {
  // * BLOCS
  di.sl.registerFactory(
      () => TextGenerateCubit(getTextGenerateUseCase: di.sl()));

  // * USECASES
  di.sl.registerLazySingleton(
      () => GetTextGenerateUseCase(textGenerateRepository: di.sl()));

  // * REPOSITORYS

  di.sl.registerLazySingleton<TextGenerateRepository>(() =>
      TextGenerateRepositoryImpl(
          networkInfo: di.sl(), textGenerateRemoteDataSource: di.sl()));

  // * DATA SOURCE
  di.sl.registerLazySingleton<TextGenerateRemoteDataSource>(
      () => TextGenerateRemoteDataSourceImpl());
}
