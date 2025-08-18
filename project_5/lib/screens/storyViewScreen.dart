import 'package:flutter/material.dart';

class StoryViewScreen extends StatelessWidget {
  final String name;
  final String imagePath;

  const StoryViewScreen({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: imagePath.startsWith('http')
            ? Image.network(imagePath, fit: BoxFit.contain)
            : Image.asset(imagePath, fit: BoxFit.contain),
      ),
    );
  }
}
