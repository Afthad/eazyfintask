

import 'package:eazyfintask/widgets/atoms/cardlisttiletext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../molecules/Button2.dart';

class CardSummary extends StatefulWidget {
  final title;
 
  final List<Widget>details;
 

  const CardSummary({Key key, this.title, this.details, }) : super(key: key);
  @override
  _CardSummaryState createState() => _CardSummaryState();
}

class _CardSummaryState extends State<CardSummary> {
  bool expand=false;
 
  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
          side: BorderSide(width: .6, color: Colors.grey)),
      elevation: .1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 
            16),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              minLeadingWidth: 0,
              leading: GestureDetector(
                onTap:(){
                  setState(() {
                    expand=!expand;
                  });
                },
                child: SvgPicture.asset('images/Down.svg',height: 20,)),
              title: Cardlisttiletext(
                text: widget.title,
              ),
              trailing: Button2(
                text: 'EDIT',
              ),
            ),
          ),
        
         expand==true? Column(
            children: widget.details,
          ):Container(height: 0,width: 0,)


        ],
      ),
    );
  }
}