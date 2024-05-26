import 'package:asaalne/core/network/network_info.dart';
import 'package:asaalne/features/text_generate/text_generate_injection_container.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt sl = GetIt.instance;

class MainInjectionContainer {
  static init() async {
    // * FEATURES
    await textGenerateInjectionContainer();

    // * CORE
    sl.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(connectionChecker: sl()));

    //* EXTERNAL
    sl.registerLazySingleton(() => InternetConnectionChecker());
  }
}
