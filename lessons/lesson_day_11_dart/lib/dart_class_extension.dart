//parent gdg class uusgeed ner nas huis
// named parameter

class Parent {
  String name;
  String gender;
  int age;
  Parent({required this.name, required this.gender, required this.age});

  // to string function ashiglana
  @override
  String toString() {
    return 'My name is: $name, gender is :$gender I am $age years old';
  }
}

class Child extends Parent {
  Child({required super.name, required super.gender, required super.age});
}

//Shape gdg class uugeed urt urgun avna
// odoo rectangle, cube class uusgeed  tuuniigee
//shape classaas ulamjilj extends hiideg bolgooroi
//dara ni shape classiin toString function dr dursiin undur ni urgin ted ed gej ogno
// Rectangle, Cube classuudiig main function dotor testlerei
//ex 1
class Shape {
  double length;
  double width;
  Shape({required this.length, required this.width});
  // toString
  @override
  String toString() {
    return 'Shape is $length, shape  width is $width';
  }

  //calculateArea gdg function uusgeed rectangle iin talbaig boddog bolgono uu
  // uundee urgun ashiglan uu
  void calculateArea() {
    print("Talbai ni ${length * width}");
  }
}

class Rectangle extends Shape {
  Rectangle({required super.length, required super.width});
  void printLenght() {
    print("Rectangle has $length");
  }
}

class Cube extends Shape {
  double height;
  Cube({required super.length, required super.width, required this.height});
  @override
  String toString() {
    return 'Shape is $length, shape  width is $width shape height is $height';
  }

  // calculateArea gdg function override hiij tuunii talbai ni oloh
  @override
  void calculateArea() {
    print('ezelhuun ${height * width * length}');
  }

  double calculatePerimeter() {
    return 12 * length;
  }
}

void main() {
  // 2 etseg eh huuhed bichih
  Parent aav = Parent(name: 'Enkhu', gender: 'male', age: 61);
  print(aav);
  Child boy = Child(name: "Boy", gender: 'male', age: 6);
  print(boy);
  //
  Shape shape = Shape(length: 20, width: 30);
  print(shape);
  Rectangle rectangle = Rectangle(length: 30, width: 90);
  print(rectangle);
  //
  rectangle.calculateArea();
  rectangle.printLenght();
  //
  Cube cube = Cube(length: 20, width: 40, height: 40);
  print(cube);
  cube.calculateArea();
}
