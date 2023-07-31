void main(List<String> args) {
  Database db = OracleDB();

  userUpdateGeneral(db);
}

void userUpdateGeneral(Database db) {
  db.userUpdate();
}

abstract class Database {
  Database() {
    print("Database");
  }
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Database {
  OracleDB() {
    print("Oracle");
  }

  @override
  void userDelete() {
    print("Oracle deleted");
  }

  @override
  void userSave() {
    print("Oracle saved");
  }

  @override
  void userUpdate() {
    print("Oracle update");
  }
}

class FirebaseDB extends Database {
  OracleDB() {
    print("Firebase");
  }

  @override
  void userDelete() {
    print("Firebase deleted");
  }

  @override
  void userSave() {
    print("Firebase saved");
  }

  @override
  void userUpdate() {
    print("Firebase update");
  }
}
