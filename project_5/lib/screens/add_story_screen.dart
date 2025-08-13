import 'package:flutter/material.dart';
class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({super.key});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon (Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
              SizedBox(width: 90),
              Text('Зураг оруулах',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: 343,
            height: 139,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.07, 1.00),
                end: Alignment(0.96, 0.18),
                colors: [Colors.brown.shade700, Colors.brown.shade800],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: BorderRadius.circular(34),
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon (Icons.add_photo_alternate_outlined,color: Colors.orange,)),
                  Text(
                    'Зураг оруулах',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 15),
              IconButton(onPressed: (){}, icon: Icon(Icons.wrap_text_outlined, color: Colors.white,)),
              Text('Зургийн тайлбар',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Rubik',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              onChanged: (value) {
                // Handle text change
              },
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Энд бичнэ үү',
                hintStyle: TextStyle(
                  color: Colors.white38,
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white38),
                ),
              ),
            ),
          ),
          SizedBox(height: 140),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: TextButton(
                onPressed: () {
                  // Handle submit action
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Постлох',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Rubik',
                    color: Colors.white,
                  ),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment(0.07, 1.00),
                  end: Alignment(0.96, 0.18),
                  colors: [
                    const Color(0xFFE76A01),
                    const Color(0xFFF99440)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
