import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(left: 20,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'takee',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontFamily: 'Manrope',
                ),
              ),
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
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartSrceen()));
                },
                child: Image.asset(
                  'assets/images/All.png',
                  width: 25,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartSrceen()));
                },
                child: Image.asset(
                  'assets/images/Cats.png',
                  width: 25,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartSrceen()));
                },
                child: Image.asset(
                  'assets/images/Dogs.png',
                  width: 25,
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
                  breed: 'Yorkshire'),
              Gallery(
                  image: 'assets/images/Rectangle 8.png',
                  name: 'Mark',
                  age: '2 month',
                  breed: 'British'),
            ],
          )
        ],
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
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
        )],
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
          Row(
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
    );
  }
}
