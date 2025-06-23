import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Color bgColor;
  final Color bgColor2;
  final String productName;
  final String image;
  const Detail ({
    required this.bgColor,
    required this.bgColor2,
    required this.productName,
    required this.image,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: bgColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Icon(Icons.image, color: bgColor,),
      ),
    );
  }
}
