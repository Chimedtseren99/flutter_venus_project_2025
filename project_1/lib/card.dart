import 'package:flutter/material.dart';
import 'package:project_1/detail.dart';

class Cards extends StatelessWidget {
  final Color bgColor;
  final Color bgColor2;
  final String productName;
  final String image;
  final bool isDonut;

  const Cards({
    required this.bgColor,
    required this.bgColor2,
    required this.productName,
    required this.image,
    this.isDonut = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 231,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 58,
                height: 37,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: bgColor2,
                ),
                child: Column(
                  children: [
                    Text(
                      '\$36',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2884ff),
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Image.asset(image),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            productName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              color: Color(0xff000000),
            ),
          ),
          isDonut
              ? Text(
                  "Dunkins",
                  style: TextStyle(
                    color: Color(0xff000000),
                  ),
                )
              : Container(),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 15,
              )),
              SizedBox(
                width: 18,
                height: 18,
                child: Image.asset('assets/images/Heart.png'),
              ),
              Padding(padding: EdgeInsets.only(left: 95)),
              Icon(Icons.add),
            ],
          ),
          SizedBox(
            height: 14,
          )
        ],
      ),
    );
  }
}
