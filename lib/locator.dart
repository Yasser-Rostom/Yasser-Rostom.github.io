import 'package:get_it/get_it.dart';

import 'core/services/scrolling_provider.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ScrollProvider());
}