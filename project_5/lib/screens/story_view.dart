import 'package:flutter/material.dart';
class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/profile.png',),
              Text('Сарнай',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                  color: Colors.white
                ),
              ),
            ],
          ),
          Image.asset('assets/images/Story.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
          ),
        ],
      ),
    );
  }
}
