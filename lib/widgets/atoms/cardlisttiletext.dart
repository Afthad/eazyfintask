

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardlisttiletext extends StatelessWidget {
  final text;

  const Cardlisttiletext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 16)
     
    );
  }
}
