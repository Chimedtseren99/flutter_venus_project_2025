import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            gradient: const LinearGradient(
                colors: [
                  Color(0xff00E5E5),
                  Color(0xff72A5F2),
                  Color(0xffE961FF),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/image 10.png",
                ),
                fit: BoxFit.cover),
          ),
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
                            MaterialPageRoute(builder: (context) => Solar()));
                      },
                      icon: Image.asset(
                        "assets/images/Group 312.png",
                      )),
                ],
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/image 14.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Center(child: Image.asset('assets/images/Earth.png')),
                      SizedBox(height: 30),
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
                      Image.asset('assets/images/Parameters.png',
                        width: double.infinity,
                        color: Colors.white,
                        ),
                    ]
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
