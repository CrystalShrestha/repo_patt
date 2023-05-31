import '../../model/user.dart';

class LocalDataSource {
  List<User> users = [
    User(id: 1, name: "John Lennon", dob: "11/10/2020", birthTime: "22:11"),
    User(id: 2, name: "Ringo Starr", dob: "12/10/2020", birthTime: "22:12"),
  ];

  bool addUser(User users) {
    this.users.add(users);
    return true;
  }

  List<User> getUser() {
    return users;
  }
}
