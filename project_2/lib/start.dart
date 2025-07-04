import 'package:flutter/material.dart';
import 'HomePage.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/p.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 344,
              height: 285,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30)),
                  RichText(
                      text: TextSpan(
                          text: "Quick Delivery at \n your",
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4f4f4f),
                          ),
                          children: [
                        TextSpan(
                          text: ' Doorstep',
                          style: TextStyle(
                            color: Colors.pink,
                          ),
                        )
                      ])),
                  SizedBox(height: 30,),
                  Text(
                    'Home delivery and online reservation \nsystem for restaurant and cafe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffbdbdbd),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 210,
                    height: 68,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      style: ElevatedButton.styleFrom (
                        backgroundColor: Color(0xfff68989),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )
                      ) ,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
