import 'package:flutter/material.dart';
import 'package:project_2/ItemPage.dart';

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
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Fast Food',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/Pizza.png",
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Italian',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/Sushi.png",
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Japanese',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/Scorpion.png",
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sea Food',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      width: 162,
                      height: 272,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Text(
                          "Melting Cheese",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "44 calories",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: Colors.redAccent,
                          ),
                        ),
                        Image(image: AssetImage("assets/images/mushroom.png")),
                        Text("9.47",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Colors.black54,
                            )),
                        Container(
                            width: 15,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Color(0xffe25353),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/plus.png")),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      width: 162,
                      height: 272,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Text(
                          "Pizza Mushroom",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "54 calories",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: Colors.redAccent,
                          ),
                        ),
                        Image(image: AssetImage("assets/images/mushroom.png")),
                        Text("12.55",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Colors.black54,
                            )),
                        Container(
                            width: 15,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Color(0xffe25353),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/plus.png")),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Column(
                  children: [
                Padding(padding: EdgeInsets.all(0)),
                    Container(
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                            backgroundColor: Color(0xffff4141),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
