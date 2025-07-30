import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_4/Profile.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                            Padding(padding: EdgeInsets.only(left: 60)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Favourites',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xffffffff),
                                    fontFamily: "Figtree",
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 40)),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                              },
                              child: Stack(
                                children: [
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gariguud(
                          image: "assets/images/mercury2.png",
                          name: "Mercury",
                          description:
                              'Mercury is the smallest planet in the\nSolar System and the closest to the\nSun.'),
                      Gariguud(
                          image: "assets/images/mercury2.png",
                          name: "Venus",
                          description:
                              'Venus is the second planet from the\nSun and is Earth\'s closest planetary\nneighbor.'),
                      Gariguud(
                          image: "assets/images/mercury2.png",
                          name: "Earth",
                          description:
                              'Earth is an ellipsoid with a\nof about 40,000 km.\nIt is the densest planet in the Solar.'),
                      Gariguud(
                          image: "assets/images/mercury2.png",
                          name: "Mars",
                          description:
                              'Mars is the fourth planet\nfrom the Sun System the\n the densest densest planet in the'),
                    ],
                  ),
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
        ),
      ),
    );
  }
}

class Gariguud extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  const Gariguud({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 219,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/image 16.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Image.asset(
                image,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 20,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: "Figtree",
                      color: Color(0xff11DCE8),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  SvgPicture.asset(
                    'assets/images/icon_fav.svg',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text(
                    description,
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
                            Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SvgPicture.asset('assets/images/icon_more.svg'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
