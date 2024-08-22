import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/utils/injections.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
