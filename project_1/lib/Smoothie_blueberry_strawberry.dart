import 'package:flutter/material.dart';
import 'package:project_1/donut_screen.dart';

class SmoothieBlueberryStrawberry extends StatefulWidget {
  // final String text;
  // final String image;
  // final String text2;
  // final String text3;
  // final String text4;
  // final String text5;

  const SmoothieBlueberryStrawberry(
      {
      //   required this.text,
      // required this.image,
      // required this.text2,
      // required this.text3,
      // required this.text4,
      // required this.text5,
      super.key});

  @override
  State<SmoothieBlueberryStrawberry> createState() =>
      _SmoothieBlueberryStrawberryState();
}

class _SmoothieBlueberryStrawberryState
    extends State<SmoothieBlueberryStrawberry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfffff3f3),
              borderRadius: BorderRadius.circular(30),

            ),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DonutScreen()));
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.grey[800],
                        size: 36,
                      ),
                    ),
                    Text(
                        "Blueberry Strawberry",
                      style: TextStyle(
                      fontSize: 20,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Nunito',

                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
