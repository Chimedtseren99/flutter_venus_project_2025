// recrangle gdg class uusgeed cons uusge
//width,height avdag bolgono uu

class Rectangle {
  double width;
  double height;
  // const
  // Rectangle(this.width, this.height);
  Rectangle({required this.width, required this.height});
}

//class definition convention

// ex1 undur urgun urtiig avdag named paremeter r avdag Cube gdg
// nertei class uusgeed const uusgeh
// testleh
class Cube {
  double width;
  double height;
  double length;
  Cube({required this.width, required this.height, required this.length});
}

//ex 2
// Shape gdg nertei class name width
// property nuud tai bolgood tuuniigee named parameter avdag bolgoh
class Shape {
  String name;
  double width;
  Shape({required this.name, required this.width});
}

void main() {
  print('lesson day 11');
  Rectangle rect = Rectangle(width: 10, height: 20);
  //named parameter
  // rect2 width = 20, height = 10

  //ex 2 ur dun
  Cube cube = Cube(width: 30, height: 30, length: 30);
  Shape shape = Shape(name: 'Gurvaljin', width: 30);
}
