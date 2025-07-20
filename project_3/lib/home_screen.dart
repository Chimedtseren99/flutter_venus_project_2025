import 'package:flutter/material.dart';
import 'package:project03/harry_intro.dart';
import 'package:project03/start_srceen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'takee',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontFamily: 'Manrope',
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 250)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StartSrceen()));
                  },
                  child: Image.asset(
                    'assets/images/umbuu 1.png',
                    width: 25,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 95,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StartSrceen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffbd1c4)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/All.png',
                          width: 25,
                        ),
                        Text(
                          'All',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartSrceen()));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Cats.png',
                            width: 25,
                          ),
                          Text(
                            'Cats',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfffffffff),
                        side: BorderSide(
                          color:Color(0xffcce1f4),
                          width: 1,
                        )
                      )),
                ),
                Container(
                  width: 100,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StartSrceen()));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Dogs.png',
                          width: 25,
                        ),
                        Text(
                          'Dogs',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Gallery(
                    image: 'assets/images/Rectangle 6.png',
                    name: 'Harry',
                    age: '3 years',
                    breed: 'Yorkshire\nTerrier'),

                Gallery(
                    image: 'assets/images/Rectangle 8.png',
                    name: 'Mark',
                    age: '2 month',
                    breed: 'British'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Gallery(
                    image: 'assets/images/Rectangle 3.png',
                    name: 'Henry',
                    age: '3 years',
                    breed: 'Mestizo'),
                Gallery(
                    image: 'assets/images/Rectangle 8 (1).png',
                    name: 'Lopy',
                    age: '3 years',
                    breed: 'Yorkshire\nTerrier'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Gallery(
                    image: 'assets/images/Rectangle 5.png',
                    name: 'Jennie',
                    age: '3 years',
                    breed: 'Yorkshire\nTerrier'),
                Gallery(
                    image: 'assets/images/Rectangle 4.png',
                    name: 'Cris',
                    age: '3 years',
                    breed: 'Mestizo'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final String image;
  final String name;
  final String age;
  final String breed;

  const Gallery({
    required this.image,
    required this.name,
    required this.age,
    required this.breed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
          )
        ],
        color: Colors.white,
      ),
      width: 160,
      height: 190,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                image,
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
                name,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                age,
                style: TextStyle(
                  fontSize: 12,
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
                breed,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: "Manrope",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
