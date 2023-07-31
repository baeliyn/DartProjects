void main(List<String> args) {
  double a = Animals.number;
  print(a);
  Animals.animal();
  print(Animals.number);
}

abstract class Animals {
  //When you create an object everything in there resets
  //but static variables and functions are stored in somewhere else
  //so they will always remain same even though you create new objects
  static double number = 10;
  static void animal() {
    number++;
    number++;
    print("Animal");
  }

  void imAnimal() {
    print("a");
  }
}

abstract class Flying {
  void fly();
}

abstract class Running {
  void run();
}

abstract class Barking {
  String barkey = "bark";
  void bark() {
    print("bark");
  }
}

class Dog extends Animals implements Barking, Running {
  @override
  String get barkey => throw UnimplementedError();

  @override
  void imAnimal() {
    super.imAnimal();
    print("I'm dog");
  }

  @override
  void bark() {}

  @override
  void run() {}
  
  @override
  set barkey(String _barkey) {

  }
}
