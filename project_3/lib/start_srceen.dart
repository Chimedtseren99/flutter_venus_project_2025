import 'package:flutter/material.dart';
import 'package:project03/home_screen.dart';

class StartSrceen extends StatefulWidget {
  const StartSrceen({super.key});

  @override
  State<StartSrceen> createState() => _StartSrceenState();
}

class _StartSrceenState extends State<StartSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfffffbfb),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(left: 20)),
          Container(
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: RichText(
              text: TextSpan(
                text: "Welcome to ",
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w400,
                  color: Color(0xfff2968f),
                ),
                children: [
                  TextSpan(
                    text: "takee",
                    style: TextStyle(
                      color: Color(0xfff2968f),
                      fontSize: 30,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/umbuu 1.png',
          width:150,
          height: 150),
          SizedBox(height: 250),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(right: 20)),
              Container(
                width: 82,
                height: 30,
                child: ElevatedButton(
                  onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff2968f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text('Start',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xfff1f1f1),
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
