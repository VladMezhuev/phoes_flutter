import 'package:get_it/get_it.dart';
import 'package:phone_app/data/order_repo.dart';
import 'package:phone_app/data/phones_repository.dart';
import 'package:phone_app/data/shared_pref.dart';

import 'package:injectable/injectable.dart';
import 'package:phone_app/di.config.dart';

//
// void setup() {
//   getIt.registerSingleton<PhonesRepository>(PhonesRepository());
//   getIt.registerSingleton<OrderRepository>(OrderRepository());
//   getIt.registerSingleton<AppPreferences>(AppPreferences());
// }

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
