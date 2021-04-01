import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addresstext extends StatelessWidget {
  final text;

  const Addresstext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      
      textAlign: TextAlign.start,
      style:GoogleFonts.lato(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),);
  }
}
