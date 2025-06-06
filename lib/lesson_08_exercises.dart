//exercise 1

import 'dart:math';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hello. I'm $name, I'm $age years old.");
  }
}

//exercise 2
class Rectangle {
  double width;
  double height;

  //constuctor
  Rectangle(this.width, this.height);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }
}

//exercise 3
class BankAccount {
  String accountHolder;
  double balance = 0.0;

  // constructor
  BankAccount(this.accountHolder);
  void deposit(amount) {
    balance = balance + amount;
  }

  void withdraw(amount) {
    balance = balance - amount;
  }

  double getBalance() {
    return balance;
  }
}

//exercise 4
class Car {
  String brand;
  String model;
  int year;
  bool isRunning = false;
//contruction
  Car(this.brand, this.model, this.year);
  void start() {
    isRunning = true;
  }

  void stop() {
    isRunning = false;
  }

  String getInfo() {
    return "My car is $brand, $model and years old, it is running: $isRunning";
  }
}

// exercise 4    dart_class_10
class Student {
  String name;
  List<int> grades = [];

  Student(this.name);
  void addGrade(grade) {
    grades.add(grade);
  }

  double getAverage() {
    double average = 0.0;
    int sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum = sum + grades[i];
      print(sum);
      average = sum / grades.length;
      print(getAverage);
    }
    return average;
  }

  void displayInfo() {
    print("Ene hun $name");
    print("Ene hunii dun $grades and ${getAverage()}");
  }
}
//     List<int> oddNumbers = [1,3,5,6,7,8,10];
//     double getAverage= 0.0;
//     int sum = 0 ;
//    for (int i = 0; i<oddNumber.lenght; i++){
// sum = sum + oddNumbers[i];
// print(sum);
// getAverage = sum / oddNumbers.length;
// print(getAverage);
// return (average);

//    }
//     void displayInfo(){
//       print(getAverage);
//       addGrade(5);
//     }

// exercise 6
class Book {
  String title;
  String author;
  bool isAvailable = true;
  int pages;
  Book(this.title, this.author, this.pages);
  void borrow() {
    isAvailable = false;
  }

  void returnBook() {
    isAvailable = true;
  }

  void getDetails() {
    print('$title, $author, $pages, ${isAvailable}');
  }
}

// exercise 7
class Circle {
  double radius;
  Circle(this.radius);
  double pi = 3.14;
  double getArea() {
    return pi * radius * radius;
  }
  double getCircumference(){
    return 2 * pi * radius;
  }
  double getDiameter (){
    return 2 * radius;
  }
  void niit (){
    print("talbai ni $getArea , $getCircumference, $getDiameter");
  }
  
}

void main() {
  // exercise 01
  Person chimdee = Person("Chimdee", 29);
  chimdee.introduce();

  //exercise 02
  Rectangle dorvoljin = Rectangle(100, 150);
  print("The Area of Rectangle is: ${dorvoljin.getArea()}");
  print("The Perimeter of Rectangle is: ${dorvoljin.getPerimeter()}");
// exercise 03
  BankAccount chimdeeAccount = BankAccount("Chimdee");
  print(chimdeeAccount.getBalance());
  chimdeeAccount.deposit(1000000000);
  print(chimdeeAccount.getBalance());

//buy house
  chimdeeAccount.withdraw(300000000);
  print(chimdeeAccount.getBalance());

//exercise 05
  Car toyota = Car("toyota", "land", 2025);
  print(toyota.getInfo());
  toyota.start();
  print(toyota.getInfo());
  toyota.stop();
  print(toyota.getInfo());

//exercise 04
  Student Chimdee = Student("Chimedo");
  print(Chimdee.name);
  print(Chimdee.getAverage());
  Chimdee.addGrade(90);
  Chimdee.addGrade(95);
  print(Chimdee.getAverage());
  Chimdee.displayInfo();

//exercise 05
  Book mindfull = Book("mindfullness", "power", 45);
  mindfull.getDetails();
  mindfull.borrow();
  mindfull.getDetails();
  mindfull.returnBook();
  mindfull.getDetails();

// exercise 07 
  Circle toirog = Circle (3.4);
  print(toirog.getArea);
  print (toirog.getCircumference);
  print (toirog.getDiameter);
  toirog.getArea;



}
