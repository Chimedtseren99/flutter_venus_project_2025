import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

void main() {
  // Problem?
  int a = 1;
  double b = 2.0;
  String c = "hello";
  bool d = true;
  // list
  List<int> numbers = [1, 2, 3, 4, 5]; // square bracket
  print(numbers); // round bracket

  // boolen turultei 5 shirheg boolen
  List<bool> boolens = [true, false, true, false, true];
  print(boolens);
  // String turultei 3 shirheg utga aguulsan
  List<String> text = ["Bat", "Bold", "Tsetseg"]; // square bracket
  print(text);
  List<double> doubleNumbers = [1.45, 3.45, 5.66];
  print(doubleNumbers[0]);
  print(doubleNumbers[1]);
  print(doubleNumbers[2]);

  print(boolens[1]);
  print(text[0]);
  print(text[1]);
  print(text[2]);
// element by index
// [0,1,2,3]
//index out of bound buyu container dotor iim index baihgui e 
  text.add("Chimdee");
  text.add("Narhan");
  print(text);
  // utguudiin dung ni orohdoo
  text.insert(3, "Hangai");
  // movies 
  List<String> chimedoFavoriteMovies = ["Goblin", "First Love", "Kigndom"];
  print(chimedoFavoriteMovies);
  // add least favorite movie 
  chimedoFavoriteMovies.add("Doctor");
  print(chimedoFavoriteMovies);
  chimedoFavoriteMovies[3] = "Mandarin";
  print(chimedoFavoriteMovies);

  // delete element from list 
  List<double> removeList = [3.5, 3.6, 6.7];
  print(removeList);
  removeList.remove(3.5);
  removeList.removeAt(0);
  print(removeList);
  removeList.removeLast();
  print(removeList);















}
