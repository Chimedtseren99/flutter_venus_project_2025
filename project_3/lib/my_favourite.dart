import 'package:flutter/material.dart';

class MyFavourite extends StatefulWidget {
  const MyFavourite({super.key});

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Container(
            width: 325,
            height: 385,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/Rectangle 5.png',
                      width: 395,
                      height: 232,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/Vector.png',
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Jennie",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "3 years",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 26)),
                    Text(
                      "Yorkshire",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 325,
            height: 385,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/Rectangle 6.png',
                      width: 395,
                      height: 232,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/Vector.png',
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Harry",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "3 years",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 26)),
                    Text(
                      "Yorkshire",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 325,
            height: 385,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/Rectangle 3.png',
                      width: 395,
                      height: 232,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/Vector.png',
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Henry",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "3 years",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 26)),
                    Text(
                      "Mestizo",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),);
  }
}
