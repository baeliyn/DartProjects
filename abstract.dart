void main(List<String> args) {}

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
  void sayHi() {
    print("I am from the shape class");
  }
}

class Square extends Shape {
  int side;

  Square(this.side);

  @override
  double calculateArea() {
    return (side * side).toDouble();
  }

  @override
  double calculatePerimeter() {
    return (side * 4).toDouble();
  }
}

class Rectangle extends Shape {
  int width;
  int height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return (width * height).toDouble();
  }

  @override
  double calculatePerimeter() {
    return ((width + height) * 4).toDouble();
  }
}
