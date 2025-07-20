
// class blue print

class Person {
  //properties - shinj cahna
  String name;
  int age;
  String gender;
// constructor
  Person(this.name, this.age, this.gender);
// class functions
  void introduce() {
    print("Hi. I'm $name, I'm $age years old."); // string interpolation
  }
  // getting old gdg function bicheed nasaa negeer nemeed butsaana
  int gettingOld() {
    return ++age;
  }
  bool hasBaby() {
    return false;
  }
}

void main() {
  int feetNumber = 2;
  int earsNumber = 2;
  int noseNumber = 1;
  String chimdeeName = "Chimdee";
  String khangaiMajor = "Computer";
  print(khangaiMajor);
  print(chimdeeName);

// Creating object from class person
  Person chimdee =
      Person("Chimdee", 30, "female"); //chimdee gedeg hunigg uusgeh
  print(chimdee);

  print(chimdee.name);
  print(chimdee.age);
  print(chimdee.gender);

chimdee.introduce();
  print(chimdee.gettingOld());
  print(chimdee.hasBaby());




  
}
