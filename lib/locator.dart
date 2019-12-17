import 'package:flitter_website/services/navigation-service.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerLazySingleton(() => NavigationService());
}
