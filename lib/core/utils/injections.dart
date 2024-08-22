import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/utils/injections.config.dart';
import 'di_module.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
