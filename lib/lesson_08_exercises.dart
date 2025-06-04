

//exercise 1
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

  double getArea (){
    return width*height;
  }
  double getPerimeter(){
    return 2*(width+height);
  }
}
//exercise 03
class BankAccount{
  String accountHolder;
  double balance = 0.0;

  // constructor 
  BankAccount(this.accountHolder);
  void deposit(amount){
    balance = balance + amount;
  }
  void withdraw (amount) {
    balance = balance - amount;
  }
  double getBalance (){
    return balance;
  }
}

//exercise 04 
class Car{
String brand;
String model;
int year;
bool isRunning = false;
//contruction
Car (this.brand, this.model, this.year);
void start (){
  isRunning = true;
}
void stop (){
  isRunning = false;
}
String getInfo (){
  return "My car is $brand, $model and years old, it is running: $isRunning";
}




} 



void main (){
  // exercise 01
   Person chimdee = Person("Chimdee", 29); 
  chimdee.introduce();

    //exercise 02
Rectangle dorvoljin = Rectangle(100, 150);
print ("The Area of Rectangle is: ${dorvoljin.getArea()}");
print ("The Perimeter of Rectangle is: ${dorvoljin.getPerimeter()}");
// exercise 03
BankAccount chimdeeAccount = BankAccount("Chimdee");
print(chimdeeAccount.getBalance());
chimdeeAccount.deposit(1_000_000_000);
print(chimdeeAccount.getBalance());

//buy house 
chimdeeAccount.withdraw(300_000_000);
print(chimdeeAccount.getBalance());

//exercise 05
Car toyota = Car( "toyota", "land", 2025);
print(toyota.getInfo());
toyota.start();
print(toyota.getInfo());
toyota.stop();
print(toyota.getInfo());



}

