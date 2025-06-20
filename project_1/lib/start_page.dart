import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/smothie_screen.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xfffff3f3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/dinosaur.png"),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            width: 300,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xffffdaf2),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SmothieScreen()));
                },
                child: Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                    color: Color(0xfff57ac8),
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
