import 'package:flutter/material.dart';
import 'package:project_1/donut_screen.dart';

class SmoothieBlueberryStrawberry extends StatefulWidget {
  // final String text;
  // final String image;
  // final String text2;
  // final String text3;
  // final String text4;
  // final String text5;

  const SmoothieBlueberryStrawberry(
      {
      //   required this.text,
      // required this.image,
      // required this.text2,
      // required this.text3,
      // required this.text4,
      // required this.text5,
      super.key});

  @override
  State<SmoothieBlueberryStrawberry> createState() =>
      _SmoothieBlueberryStrawberryState();
}

class _SmoothieBlueberryStrawberryState
    extends State<SmoothieBlueberryStrawberry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfffff3f3),
              borderRadius: BorderRadius.circular(30),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonutScreen()));
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.grey[800],
                        size: 36,
                      ),
                    ),
                    Text("Blueberry Strawberry",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Nunito',
                        )),
                  ],
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'assets/images/smoothie.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.only(top: 46, left: 20, right: 20, bottom: 31),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ingredients'),
                        Row(
                          children: [
                            Container(
                              child: Column(
                  
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Sugar',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xffcae1ff),
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(child: Text('2%',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )),
                  
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              ),
                              width: 65,
                              height: 120,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            )
                          ],
                        ),

                        Text('Details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
