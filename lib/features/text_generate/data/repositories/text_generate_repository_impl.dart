import 'dart:developer';

import 'package:asaalne/core/error/failur.dart';
import 'package:asaalne/core/network/network_info.dart';
import 'package:asaalne/features/text_generate/data/datasources/remote_datasource/text_generate_reomte_datasource.dart';
import 'package:asaalne/features/text_generate/domain/repositories/text_generate_repository.dart';
import 'package:asaalne/features/text_generate/domain/usecases/get_text_generate_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class TextGenerateRepositoryImpl implements TextGenerateRepository {
  final NetworkInfo networkInfo;
  final TextGenerateRemoteDataSource textGenerateRemoteDataSource;
  const TextGenerateRepositoryImpl({
    required this.networkInfo,
    required this.textGenerateRemoteDataSource,
  });

  @override
  Future<Either<Failure, String>> getTextGenerate(
      GetTextGenerateParams params) async {
    if (await networkInfo.isConnected) {
      try {
        log('no result');
        final result =
            await textGenerateRemoteDataSource.getTextGenerate(params);
        return Right(result);
      } on ServerException catch (failure) {
        log('no failurefailure');
        return Left(ServerFailure(failure.message));
      }
    } else {
      log('no interner');
      return const Left(ServerFailure("no connection internet"));
    }
  }
}
