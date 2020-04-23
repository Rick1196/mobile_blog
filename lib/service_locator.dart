import 'services/auth.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupServiceLocator(){
  locator.registerLazySingleton<Auth>(() => Auth());
}