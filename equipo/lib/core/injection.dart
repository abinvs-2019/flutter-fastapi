import 'package:equipo/core/injection.config.dart';
import 'package:equipo/domain/I_Login.dart';
import 'package:equipo/infrastructure/login/api.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
Future<void> configureDependencies() async {
  getIt.registerLazySingleton<I_login>(() => Api());
  await init(getIt, environment: Environment.prod);
}
