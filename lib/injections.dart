// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:baseapp/injections.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String environment) async {
  await $initGetIt(getIt, environment: environment);
}

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
