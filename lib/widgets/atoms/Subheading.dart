
import 'package:eazyfintask/utils.dart/colors.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subheadingtext extends StatelessWidget {
  final text;

  const Subheadingtext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: GoogleFonts.lato(
    textStyle: TextStyle(color: secondary ,fontWeight: FontWeight.normal,fontSize: 14),
    )
    );
  }
}


