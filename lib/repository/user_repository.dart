import 'package:getitfrontend/data_source/local/local_data_source.dart';
import 'package:getitfrontend/data_source/remote/remote_data_source.dart';

import '../model/user.dart';

class UserRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  UserRepository(this.localDataSource, this.remoteDataSource);

  bool hasNetwork = true;

  bool addUser(User user) {
    bool isAdded = false;
    if (hasNetwork) {
      isAdded = remoteDataSource.addUser(user);
    } else {
      isAdded = localDataSource.addUser(user);
    }
    return isAdded;
  }

  List<User> getUser() {
    if (hasNetwork) {
      return remoteDataSource.getUser();
    } else {
      return localDataSource.getUser();
    }
  }
}
