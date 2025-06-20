//exercise 08

class Temperature {
  double celsius;
  Temperature(this.celsius);
  double toFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }

  fromFanrenheit(double fanrenheit) {
    return (fanrenheit - 32) * 5 / 9;
  }

  void displayBoth() {
    print("Celsius to fanrenheit : ${toFahrenheit()}");
    print("Fanrenheit to Celsius: ${fromFanrenheit(212)}");
  }
}

//exercise 09
class Counter {
  int count = 0;
  void increment() {
    count = count + 1; // count ++
  }

  void decrement() {
    count = count - 1; // count --
  }

  void reset() {
    count = 0;
  }

  int getValue() {
    return count;
  }
}

//exercise 10
class Pet {
  String name;
  String species;
  int age;
  int hungerLevel = 5;
  Pet(this.name, this.species, this.age);
  void feed() {
    if (hungerLevel <= 10) {
      hungerLevel = hungerLevel + 1; // hungerLevel += 2;
    }
  }

  void play() {
    if (hungerLevel > 1) {
      hungerLevel = hungerLevel - 2; // hungerLevel -= 2;
    }
  }

  String getStatus() {
    return "The $species $name is $age years old. The $name\'s  hunger level is $hungerLevel";
  }
}

void main() {
  //exercise 08
  Temperature testTemperature = Temperature(20);
  print(testTemperature.toFahrenheit());
  print(testTemperature.fromFanrenheit(212));
  Temperature nullDegree = Temperature(0);
  print(nullDegree.toFahrenheit());

  //exercise 09
  Counter simpleCounter = Counter();
  for (int i = 0; i < 10; i++) {
    simpleCounter.increment();
  }
  print(simpleCounter.getValue());

  for (int i = 0; i < 6; i++) {
    simpleCounter.decrement();
  }
  print(simpleCounter.getValue());

  simpleCounter.reset();
  print(simpleCounter.getValue());

//Test exercise 10
  Pet shiro = Pet("Shiro", "dog", 2);
  print(shiro.getStatus());
  shiro.play();
  shiro.play();
  shiro.play();
  print(shiro.getStatus());

  shiro.feed();
  shiro.feed();
  shiro.feed();
  shiro.feed();
  shiro.feed();
  print(shiro.getStatus());
}
