import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Image.asset(
                    "assets/images/3.png",
                  ),
                  Padding(padding: EdgeInsets.only(left: 290)),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xfff68989),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/search.png")),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Hi Alex',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Find your Delicious Food',
                        style: TextStyle(
                          color: Color(0xff4f4f4f),
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                       ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/Hamburger.png",
                          ),
                          style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                      SizedBox(height: 10),
                      Text('Fast Food',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/Pizza.png",
                        ),
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15,
                        ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(height: 10),
                      Text('Italian',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/Sushi.png",
                        ),
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15,
                        ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(height: 10),
                      Text('Japanese',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/Scorpion.png",
                        ),
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15,
                        ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(height: 10),
                      Text('Sea Food',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
