import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addresstextgrey extends StatelessWidget {

  final text;

  const Addresstextgrey({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      
      textAlign: TextAlign.start,
      style:GoogleFonts.lato(fontSize: 14,color: Colors.grey[300],fontWeight: FontWeight.w400),);
  }
}
