import 'package:eazyfintask/widgets/atoms/greytextRow1cardleft.dart';
import 'package:eazyfintask/widgets/atoms/greytextRow1cardright.dart';
import 'package:eazyfintask/widgets/atoms/textRow1cardleft.dart';
import 'package:eazyfintask/widgets/atoms/textRow1right.dart';
import 'package:flutter/material.dart';


class CardRow1 extends StatelessWidget {
 final bool isgrey;
  final textleft;
  final textright;

  const CardRow1({Key key, this.textleft,this.textright,@required this.isgrey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
     if(isgrey==false)...[ 
   Row1cardtext(text: textleft,),
   Row1cardtextRight(text: textright,)],
   if(isgrey==true)...[
GreyRow1cardtext(text: textleft,),
   GreyRow1cardtextRight(text: textright,)
   ]
        ],
        ),
    );
  }
}