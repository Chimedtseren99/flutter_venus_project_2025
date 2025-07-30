import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_4/Favourites.dart';
import 'package:project_4/Inner_page.dart';

class Solar extends StatefulWidget {
  const Solar({super.key});

  @override
  State<Solar> createState() => _SolarState();
}

class _SolarState extends State<Solar> {
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
                              Stack(children: [
                                Positioned(
                                  child: SvgPicture.asset(
                                    "assets/images/Ellipse 36.svg",
                                  ),
                                ),
                                Positioned(
                                  top: 37,
                                  left: 30,
                                  child: SvgPicture.asset(
                                      "assets/images/Group 6.svg"),
                                ),
                              ]),
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Milky Way',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8D8E99),
                                    ),
                                  ),
                                  Text(
                                    'Solar System',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xffffffff),
                                      fontFamily: "Figtree",
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Stack(children: [
                                Positioned(
                                  child: SvgPicture.asset(
                                    "assets/images/Ellipse 36.svg",
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 28,
                                  child: SvgPicture.asset(
                                      "assets/images/icon_profile.svg"),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/column 1.png",
                      ),
                      Image.asset(
                        "assets/images/column 2.png",
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:( context)=> InnerPage()));
                        },
                        child: Image.asset(
                          "assets/images/column 3.png",
                        ),
                      ),
                      Image.asset(
                        "assets/images/column 4.png",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    width: 427,
                    height: 235,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/image 15.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 20,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            'Planet of the day',
                            style: TextStyle(
                              fontFamily: "Figtree",
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
            
                            Image.asset('assets/images/Mars.png',
                                width: 100, height: 100, fit: BoxFit.cover,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mars',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    fontFamily: "Figtree",
                                    color: Color(0xff11DCE8),
                                  ),
                                ),
                                Text(
                                  'Mars is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only being larger\nthan Mercury. In the English\nlanguage, Mars is named for the\nRoman god of war.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: "Figtree",
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 150)),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text('Details',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                          SvgPicture.asset('assets/images/icon_more.svg'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
            
                              ],
                            )
                          ],
                        )
            
            
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 427,
                    height: 249,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/image 15.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 2, left: 20)),
                        Column(
                          children: [
                            Text(
                              'Solar System',
                              style: TextStyle(
                                fontFamily: "Figtree",
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text('The Solar System[c] is the gravitationally bound\nsystem of the Sun and the objects that orbit it. It\nformed 4.6 billion years ago from the gravitational\ncollapse of a giant interstellar molecular cloud.\nThe vast majority (99.86%) of the system\'s mass\nis in the Sun, with most of the remaining mass\ncontained in the planet Jupiter. The four inner\nsystem planets—Mercury, Venus, Earth and Mars\n—are terrestrial planets, being composed\nprimarily of rock and metal. The four giant planets\nof the outer system are substantially larger and\nmore massive than the terrestrials. ',
                          style: TextStyle(
                            fontFamily: "Figree",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
            
                    ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Favourites()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset('assets/images/Tabbar.png')),
              ],
            ),
          )),
    ));
  }
}
