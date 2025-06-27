import 'package:flutter/material.dart';
import 'package:project_1/donut_screen.dart';

class DonutDetails extends StatelessWidget {
  final String text;
  final String image;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Color bgColor1;
  final Color bgColor2;
  final Color bgColor3;
  final Color bgColor4;


  const DonutDetails({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.bgColor1,
    required this.bgColor2,
    required this.bgColor3,
    required this.bgColor4
  });

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
                    Text(text,
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
                    image,
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
                    padding: EdgeInsets.only(
                        top: 46, left: 20, right: 20, bottom: 31),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ingredients',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 20.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 65,
                              height: 120,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      text2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: bgColor1,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                        child: Text(
                                          '2%',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      text3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: bgColor2,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                        child: Text(
                                          '3%',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      text4,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: bgColor3,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                        child: Text(
                                          '12%',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      text5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: bgColor4,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                        child: Text(
                                          '40%',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        Text(
                          'A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          width: 320,
                          height: 92,
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 30)),
                                  Text(
                                    '\$12.75| \$45',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 30)),
                                  Text(
                                    'Delievery not included',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 210)),
                                  Text(
                                    'View Cart',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
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
