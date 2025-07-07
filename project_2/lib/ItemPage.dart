import 'package:flutter/material.dart';
import 'package:project_2/HomePage.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        weight: 400,
                      ))
                ]),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton (
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          }, icon: Icon(Icons.home),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Text("Melting Cheese",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: Colors.black54,
                    )),
                Text(
                  "9.47",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                "assets/images/mushroom.png",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    if(count > 0){
                      setState(() {
                        count--;
                      });
                    }
                  },
                  child: Container(
                      width: 19,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color(0xffe25353),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        "assets/images/diminish.png",
                      )),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "$count",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: Colors.black87,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  child: Container(
                      width: 19,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color(0xffe25353),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset("assets/images/plus.png")),
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/images/Ellipse1.png"),
                      Text(
                        "6.44",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "8 inch",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/images/Ellipse2.png"),
                      Text(
                        "9.47",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "12 inch",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/images/Ellipse1.png"),
                      Text(
                        "15.32",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "16 inch",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/star.png",
                        width: 25,
                        height: 25,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Vector.png",
                        width: 25,
                        height: 25,
                      ),
                      Text(
                        "44 Calories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/clock.png",
                        width: 25,
                        height: 25,
                      ),
                      Text(
                        "20-30 min",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 310,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff4141),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  'Add to card',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
