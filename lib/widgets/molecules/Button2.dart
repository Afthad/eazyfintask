

import 'package:eazyfintask/widgets/atoms/Editbuttontext.dart';
import 'package:flutter/material.dart';


class Button2 extends StatelessWidget {

  final text;
    final VoidCallback onPressed;
  const Button2({Key key, this.text,this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Editbuttontext(text:text,));
  }
}