import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Venus Class",
          style: TextStyle(
            fontSize: 40,
            color: Colors.red,
          ),
        ),
      ),
      body: HelloFlutter(),
    ),
  ));
}

List<String> fruits = ['Banana', 'Orange', 'Lemon'];
List<int> numbers = [12,22,32];
// 3 tootoi list numbers gdg huvisagch uusged 
// tuuniigee jimsnii dood tald haragduulna uu 
class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

// 3 turliin jimsnii tsugluulga uusgeed
  // fruits gdg huvisagchid hadgalna uu

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (String fruit in fruits)
            Text(
              '*$fruit',
              style: TextStyle(fontSize: 30),
            ),
          SizedBox(
            height: 8,
          ),
          Text(
            'List length: ${fruits.length}',
            style: TextStyle(
                fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for ( int number in numbers )
            Text(
              '-$number',
              style: TextStyle(fontSize: 30),
            ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
