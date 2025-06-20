import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/start_page.dart';

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
                Container(
                  width: 160,
                  height: 231,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcae1ff),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 58,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffa3c9fc),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '\$36',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2884ff),
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Image.asset('assets/images/smoothie.png'),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Blueberry Strawberry',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            left: 15,
                          )),
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: Image.asset('assets/images/Heart.png'),
                          ),
                          Padding(padding: EdgeInsets.only(left: 95)),
                          Icon(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 160,
                  height: 231,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcae1ff),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 58,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffa3c9fc),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '\$36',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2884ff),
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Image.asset('assets/images/smoothie.png'),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Blueberry Strawberry',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            left: 15,
                          )),
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: Image.asset('assets/images/Heart.png'),
                          ),
                          Padding(padding: EdgeInsets.only(left: 95)),
                          Icon(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
