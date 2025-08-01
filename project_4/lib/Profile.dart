import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_4/Favourites.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/image 10.png",
                ),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 128,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/Rectangle 27.png",
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Favourites()));
                                  },
                                  child: Image.asset(
                                      "assets/images/Action top.png")),
                              Padding(padding: EdgeInsets.only(left: 60)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'My Profile',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xffffffff),
                                      fontFamily: "Figtree",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  // height: 219,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image 16.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/profile.png'),
                      Column(
                        children: [
                          Text(
                            'Arthur Dent',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontFamily: "Figtree",
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Space adventurer',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "Figtree",
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Image.asset('assets/images/bar_icon_edit.png')
                    ],
                  ),
                ),
                Container(
                  width: 370,
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/image 14.png'), fit: BoxFit.fill)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Switch.png'),
                        Image.asset('assets/images/circle.png'),
                        Image.asset('assets/images/checkbox.png'),
                        Image.asset('assets/images/checkbox (1).png'),
                      ],
                    ),
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
