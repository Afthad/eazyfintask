

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Formtext2 extends StatelessWidget {
  final text;

  const Formtext2({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style:    GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.black ,fontWeight: FontWeight.w600,fontSize: 16),
  ),
     
     
    );
  }}