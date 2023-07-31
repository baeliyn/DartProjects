void main(List<String> args) {
  User user1 = User();
  AdminUser user2 = AdminUser();
  User user3 = AdminUser();

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);
}

class User {
  String email = "";
  String password = "";

  void logIn() {
    print("User logged");
  }
}

class NormalUser extends User {
  void invite() {
    print("Normal user");
  }

  @override
  void logIn() {
    print("Normal User logged");
  }
}

class OnlyRead extends NormalUser {
  void tellYourName() {
    print("i can only read");
  }
}

class AdminUser extends User {
  void totalUser() {
    print("Total user");
  }
}
