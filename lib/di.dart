import 'package:get_it/get_it.dart';
import 'package:phone_app/data/order_repo.dart';
import 'package:phone_app/data/phones_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<PhonesRepository>(PhonesRepository());
  getIt.registerSingleton<OrderRepository>(OrderRepository());
}