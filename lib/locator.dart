import 'package:get_it/get_it.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'core/services/scrolling_provider.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ItemScrollController());
  locator.registerLazySingleton(() => ScrollProvider());
}