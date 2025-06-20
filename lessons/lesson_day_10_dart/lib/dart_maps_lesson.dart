// Dart Map

// Problem-

//Knowledge -List
//Badam_  -3 kino ner
import 'dart:async';

List<String> movies = ["Huan Jou gege", "Gung Fu", "Shifou"];

//Chimedee - 3
List<String> japaneseRockBand = ['One ok rock', "G-metal", "Chammina"];

// Universal constant numbers
List<double> universalNumbers = [3.14, 9.78, 2.74];

// Сайн уу | Hi
// Хар | Black
// Машин  | Car

List<List<String>> dictionary = [
  ['Сайн уу', 'Hi'],
  ['Хар', 'Black'],
  ['Машин', 'Car'],
];

Map<String, int> emptyMap = {};
Map<String, int> inventory = {
  'cakes': 20,
  'pies': 14,
  'donuts': 37,
  'cookies': 141,
};
void main() {
  print(dictionary[0]);
  print(dictionary[1]);
  print(dictionary[2]);
  print(dictionary[2][1]);

  print(inventory['cakes']);
  print(inventory['pies']);
  print(inventory['donuts']);
  print(inventory['cookies']);
  print(inventory);
  // add element to map
  inventory['brownies'] = 10;
  print(inventory);
  // remove element
  inventory.remove('brownies');
  print(inventory);
  //get only keys from map
  print(inventory.keys);
  // get only values from map
  print(inventory.values);
  print(inventory.values.length);
  inventory['brownies'] = 10;

  // give me sum of all invertory element  using for loop

  double sum = 0;
  for (int i = 0; i < inventory.values.length; i++) {
    sum = sum + inventory.values.toList()[i];
  }
  print(sum);

  // үг байна уу үгүй юу гэдгийг асуух
  print(inventory.containsValue(2));
  print(inventory.containsKey('cakes'));

  sum = 0;
  //map loop
  for (var key in inventory.keys) {
    print(inventory[key]);
    sum = sum + inventory[key]!;
  }
  print('Map loop sum: $sum');
}
