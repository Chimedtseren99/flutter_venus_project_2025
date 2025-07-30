import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_4/Favourites.dart';
import 'package:project_4/Solar.dart';

class InnerPage extends StatefulWidget {
  const InnerPage({super.key});

  @override
  State<InnerPage> createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/image 11.png",
                ),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Solar()));
                        },
                        icon: Image.asset(
                          "assets/images/Action top.png",
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Favourites()));
                        },
                        icon: Image.asset(
                          "assets/images/Group 312.png",
                        )),
                  ],
                ),
                SizedBox(height: 100),
                Container(
                  height: 650,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/image 14.png',
                            ),
                            fit: BoxFit.contain
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Earth.png'),
                          ),
                          // SizedBox(height: 30),
                          Center(
                            child: Text(
                              'Earth',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                                color: Colors.white,
                                fontFamily: "Figtree",
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/Parameters.png',
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Container(
                            width: 146,
                            height: 48,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff00E5E5),
                                    Color(0xff72A5F2),
                                    Color(0xffE961FF),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Visit',
                                style: TextStyle(
                                  fontFamily: "Figtree",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
