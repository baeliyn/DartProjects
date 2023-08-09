void main(List<String> args) {
  try {
    Student bera = Student(-5);
    print(bera.age);
  } catch (e) {
    print(e);
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = "Age Exception"});

  @override
  String toString() {
    return message;
  }
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      throw AgeException();
    } else {
      this.age = age;
    }
  }
}
