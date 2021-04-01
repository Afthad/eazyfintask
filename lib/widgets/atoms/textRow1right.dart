import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Row1cardtextRight extends StatelessWidget {
  final text;

  const Row1cardtextRight({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      
      textAlign: TextAlign.start,
      style:GoogleFonts.lato(
fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold
      ),);
  }
}

    