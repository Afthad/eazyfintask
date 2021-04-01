

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Formtext1 extends StatelessWidget {
  final text;

  const Formtext1({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    'Type the '+text+' month salary',style:    GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.black ,fontWeight: FontWeight.w600,fontSize: 16),
  ),
     
     
    );
  }
}