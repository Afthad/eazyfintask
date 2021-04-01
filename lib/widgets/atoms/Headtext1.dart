import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headttext1 extends StatelessWidget {
  final text;

  const Headttext1({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style:  GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.black ,fontWeight: FontWeight.w800,fontSize: 24),
  ),
     
    );
  }
}

     