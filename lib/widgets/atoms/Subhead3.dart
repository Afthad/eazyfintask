

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subhead3 extends StatelessWidget {
  final String text;

  const Subhead3({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: GoogleFonts.lato(
      color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19
    ),

     
    );
  }
}