import 'package:flutter/cupertino.dart';
import 'package:project_1/smothie_details.dart';

class Details_1 extends StatelessWidget {
  const Details_1({super.key});

  @override
  Widget build(BuildContext context) {
    return SmothieDetails(text: 'Blueberry Strawberry', image: 'assets/images/smoothie.png', text2: 'Sugar', text3: 'Salt', text4: 'Fat', text5: 'Energy', bgColor1: Color(0xffcaf1ff,), bgColor2: Color(0xffFFD6D6,), bgColor3:Color(0xffd1ffd0) , bgColor4: Color(0xfffeffba,));
  }
}
