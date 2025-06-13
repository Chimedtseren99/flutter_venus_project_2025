// Horse gdg classs
class Horse {
  double height;
  String name;
  String color;
  Horse({required this.height, required this.name, required this.color});
  @override
  String toString() {
    return 'My horse name is : $name, and has a color : $color. Her tall is $height';
  }

  void printInfo() {
    print(
        'My horse name is : $name, and has a color : $color. Her tall is $height');
  }
}

void main() {
  Horse horse = Horse(height: 210, name: 'Julie', color: 'White');
  print(horse);
  horse.printInfo();
}
