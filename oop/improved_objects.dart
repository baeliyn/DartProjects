void main(List<String> args) {
  Soldier bera = Soldier("bera", 18);
  Soldier hasan = Private("hasan", 20);
}

class Soldier {
  String name;
  int age = 0;

  Soldier(this.name, this.age) {
    print("Soldier");
  }

  void greet() {
    print("hi my name is $age and $name");
  }
}

class Private extends Soldier {
  //super leads you into extended variable
  Private(String name, int age) : super(name, age) {
    print("Private");
  }
}
