import 'package:flutter/material.dart';
import 'package:project03/home_screen.dart';
import 'package:project03/my_favourite.dart';

class HarryIntro extends StatefulWidget {
  const HarryIntro({super.key});

  @override
  State<HarryIntro> createState() => _HarryIntroState();
}

class _HarryIntroState extends State<HarryIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/bigUilli.png',
                  width: 338,
                  height: 360,
                ),
              ),
              SizedBox(height: 20),
              Positioned(
                top: 15,
                left: 50,
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.7),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 250)),
                    Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyFavourite()));
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.star),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 80,
                top: 300,
                child: Container(
                  width: 80,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    'Harry \non a walk',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Samoyed Willy',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontFamily: "Manrope",
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffbdd2fc),
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                child: Text(
                  '1 years',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 132,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffb4fc8e),
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                child: Text(
                  'Knows command',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 56,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffffde96),
                ),
                padding: EdgeInsets.only(left: 5, top: 5),
                child: Text(
                  '13kg',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 327,
            height: 96,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry\'s standard dummy text ever since the 1500s',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Manrope',
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 327,
            height: 96,
            child: Text('Updated 10th of December'),
          ),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.pink.withOpacity(0.5),
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Buy now',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
