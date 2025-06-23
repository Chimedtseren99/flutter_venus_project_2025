import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/start_page.dart';

import 'card.dart';

class SmothieScreen extends StatefulWidget {
  const SmothieScreen({super.key});

  @override
  State<SmothieScreen> createState() => _SmothieScreenState();
}

class _SmothieScreenState extends State<SmothieScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffff3f3),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: 14),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPage()));
              },
              icon: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[800],
                    size: 36,
                  )),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 42)),
                Text(
                  "I want to eat",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 40)),
                Container(
                  width: 160,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffc1dcff),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Smothie',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  width: 160,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffffffff),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Donut',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only( top: 10)),
                Cards(bgColor: Color(0xffcae1ff), bgColor2: Color(0xffa3c9fc), productName: "Blueberry Strawberry", image:'assets/images/smoothie.png'),
                Cards(bgColor: Color(0xffffd6d6), bgColor2: Color(0xffffc4c4), productName: "Strawberry", image: 'assets/images/smoothie (5).png'),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only( top: 10)),
                Cards(bgColor: Color(0xffd1ffd0), bgColor2: Color(0xffb6ffb5), productName: "Island Green", image: 'assets/images/smoothie (4).png'),
                Cards(bgColor: Color(0xfffeffba), bgColor2: Color(0xfffbfe83), productName: "Banana", image: 'assets/images/banana-smoothie.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}


