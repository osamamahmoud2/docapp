import 'package:docapp/core/networking/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerLazySingleton<Apiservice>(() => Apiservice());
}
