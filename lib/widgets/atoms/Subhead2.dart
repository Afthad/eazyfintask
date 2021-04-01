

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subhead2text extends StatelessWidget {
  final text;

  const Subhead2text({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),
     
    );
  }
}
 