import 'package:eazyfintask/utils.dart/colors.dart';

import 'package:flutter/material.dart';

class Editbuttontext extends StatelessWidget {
  final String text;

  const Editbuttontext({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: TextStyle(color: primary,fontFamily: 'Lato',fontWeight: FontWeight.bold,fontSize: 14,),
     
    );
  }
}