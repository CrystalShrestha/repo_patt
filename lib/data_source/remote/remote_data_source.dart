import '../../model/user.dart';

// api implementaiton
class RemoteDataSource {
  List<User> users = [
    User(
        id: 1,
        name: "Remote Ninja Hattori",
        dob: "5/1/2002",
        birthTime: "22/12"),
    User(id: 2, name: "Remote Nobita", dob: "10/10/2020", birthTime: "22/12"),
    User(id: 3, name: "Remote Doraemon", dob: "10/10/2020", birthTime: "22/12"),
  ];

  bool addUser(User users) {
    this.users.add(users);
    return true;
  }

  List<User> getUser() {
    return users;
  }
}
