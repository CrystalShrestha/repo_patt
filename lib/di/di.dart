import 'package:get_it/get_it.dart';
import 'package:getitfrontend/data_source/local/local_data_source.dart';
import 'package:getitfrontend/data_source/remote/remote_data_source.dart';
import 'package:getitfrontend/repository/user_repository.dart';

final getIt = GetIt.instance;

void initModule() {
  getIt.registerLazySingleton<LocalDataSource>(
    () => LocalDataSource(),
  );
  getIt.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSource(),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(getIt(), getIt()),
  );
}
