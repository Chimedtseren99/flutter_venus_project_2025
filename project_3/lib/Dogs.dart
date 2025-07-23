import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project03/my_favourite.dart';
 class Dogs extends StatefulWidget {
   const Dogs({super.key});

   @override
   State<Dogs> createState() => _DogsState();
 }

 class _DogsState extends State<Dogs> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: SingleChildScrollView(
           child: Center(
             child: Column(
               children: [
                 Row(
                   children: [
                     SizedBox(
                       width: 40,
                     ),
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     }, icon: Icon(Icons.arrow_back_ios),
                       style: IconButton.styleFrom(
                         backgroundColor: Colors.white70,
                       ),),
                   ],
                 ),
                 Container(
                   width: 325,
                   height: 385,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(33),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.1),
                         spreadRadius: 5,
                         blurRadius: 7,
                       ),
                     ],
                     color: Colors.white,
                   ),
                   child: Column(
                     children: [
                       Stack(
                         children: [
                           Container(
                             width: 333,
                             height: 232,
                             child:
                             Image.asset(
                               'assets/images/Rectangle 6.png',
                               fit: BoxFit.cover,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: SizedBox(
                                   width: 34,
                                   height: 34,
                                   child: TextButton(
                                     onPressed: () {
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) => MyFavourite()));
                                     },
                                     style: TextButton.styleFrom(
                                         padding: EdgeInsets.zero,
                                         backgroundColor: Colors.white.withOpacity(0.3)),

                                     child: SvgPicture.asset(
                                       'assets/images/Vector.svg',
                                       width: 22,
                                       height: 22,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(
                             "Harry",
                             style: TextStyle(
                               fontFamily: 'Manrope',
                               fontWeight: FontWeight.w700,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "3 years",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(padding: EdgeInsets.only(left: 46)),
                           Text(
                             "Yorkshire \nTerrier",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black.withOpacity(0.5),
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),

                 SizedBox(
                   height: 30,),
                 Container(
                   width: 325,
                   height: 385,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(33),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.1),
                         spreadRadius: 5,
                         blurRadius: 7,
                       ),
                     ],
                     color: Colors.white,
                   ),
                   child: Column(
                     children: [
                       Stack(
                         children: [
                           Image.asset(
                             'assets/images/Rectangle 8 (1).png',
                             width: 395,
                             height: 232,
                             fit: BoxFit.cover,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: SizedBox(
                                   width: 34,
                                   height: 34,
                                   child: TextButton(
                                     onPressed: () {
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) => MyFavourite()));
                                     },
                                     style: TextButton.styleFrom(
                                         padding: EdgeInsets.zero,
                                         backgroundColor: Colors.white.withOpacity(0.3)),

                                     child: SvgPicture.asset(
                                       'assets/images/Vector.svg',
                                       width: 22,
                                       height: 22,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(
                             "Lopy",
                             style: TextStyle(
                               fontFamily: 'Manrope',
                               fontWeight: FontWeight.w700,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "3 years",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(padding: EdgeInsets.only(left: 56)),
                           Text(
                             "Yorkshire \nTerrier",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black.withOpacity(0.5),
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 30,),
                 Container(
                   width: 325,
                   height: 385,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(33),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.1),
                         spreadRadius: 5,
                         blurRadius: 7,
                       ),
                     ],
                     color: Colors.white,
                   ),
                   child: Column(
                     children: [
                       Stack(
                         children: [
                           Image.asset(
                             'assets/images/Rectangle 5.png',
                             width: 395,
                             height: 232,
                             fit: BoxFit.cover,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: SizedBox(
                                   width: 34,
                                   height: 34,
                                   child: TextButton(
                                     onPressed: () {
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) => MyFavourite()));
                                     },
                                     style: TextButton.styleFrom(
                                         padding: EdgeInsets.zero,
                                         backgroundColor: Colors.white.withOpacity(0.3)),

                                     child: SvgPicture.asset(
                                       'assets/images/Vector.svg',
                                       width: 22,
                                       height: 22,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(
                             "Jennie",
                             style: TextStyle(
                               fontFamily: 'Manrope',
                               fontWeight: FontWeight.w700,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "3 years",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(padding: EdgeInsets.only(left: 46)),
                           Text(
                             "Yorkshire \nTerrier",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black.withOpacity(0.5),
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 30,),
                 Container(
                   width: 325,
                   height: 385,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(33),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.1),
                         spreadRadius: 5,
                         blurRadius: 7,
                       ),
                     ],
                     color: Colors.white,
                   ),
                   child: Column(
                     children: [
                       Stack(
                         children: [
                           Image.asset(
                             'assets/images/Rectangle 4.png',
                             width: 395,
                             height: 232,
                             fit: BoxFit.cover,
                           ),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(6.0),
                                 child: SizedBox(
                                   width: 34,
                                   height: 34,
                                   child: TextButton(
                                     onPressed: () {
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) => MyFavourite()));
                                     },
                                     style: TextButton.styleFrom(
                                         padding: EdgeInsets.zero,
                                         backgroundColor: Colors.white.withOpacity(0.3)),

                                     child: SvgPicture.asset(
                                       'assets/images/Vector.svg',
                                       width: 22,
                                       height: 22,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Padding(padding: EdgeInsets.only(left: 10, top: 10)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(
                             "Cris",
                             style: TextStyle(
                               fontFamily: 'Manrope',
                               fontWeight: FontWeight.w700,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "3 years",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(padding: EdgeInsets.only(left: 46)),
                           Text(
                             "Mestizo",
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w500,
                               color: Colors.black.withOpacity(0.5),
                               fontFamily: "Manrope",
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),);
   }
 }
