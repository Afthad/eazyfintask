

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Butontext extends StatelessWidget {
  final text;

  const Butontext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style:    GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.white ,fontWeight: FontWeight.w800,fontSize: 16),
  ),
     
     
    );
  }}