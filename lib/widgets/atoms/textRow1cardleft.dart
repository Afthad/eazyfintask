import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Row1cardtext extends StatelessWidget {
  final text;

  const Row1cardtext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,style:GoogleFonts.lato(
      fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w400
    ),);
  }
}
