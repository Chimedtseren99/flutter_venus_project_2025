import 'package:flutter/material.dart';
import 'package:project03/cris_intro.dart';
import 'package:project03/harry_intro.dart';
import 'package:project03/henry_intro.dart';
import 'package:project03/jennie_intro.dart';
import 'package:project03/lopy_intro.dart';
import 'package:project03/mark_intro.dart';
class PetCard extends StatefulWidget {
  final String name; // <--- Add this property
  final Widget child; // <--- Add this to wrap the actual card content

  const PetCard({
    super.key,
    required this.name, // <--- Make it required
    required this.child, // <--- Make it required
  });

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Амьтны нэрээр нь ялгах хуудас руу үсэрнэ
        if(widget.name == "Harry"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const HarryIntro()));
        }
        else if (widget.name == "Henry"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const HenryIntro()));
        }
        else if (widget.name == "Mark"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const MarkIntro()));
        }
        else if (widget.name == "Lopy"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const LopyIntro()));
        }
        else if (widget.name == "Jennie"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const JennieIntro()));
        }
        else if (widget.name == "Cris"){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const CrisIntro()));
        }
      },
      child: widget.child, // <--- Use the child
    );
  }
}
