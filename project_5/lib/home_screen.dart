import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Image.asset('assets/images/Logo.png'),
          ),
          Row(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                children: [
                  Container(
                    child: TextButton(onPressed: (){} ,
                        child: Column(
                          children: [
                            Image.asset('assets/images/add.png'),
                            SizedBox(height: 5),
                            Text('Нэмэх',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                    ),
                  )
                ],
              )),
            ],
          ),
        ],
      ),
    ));
  }
}
