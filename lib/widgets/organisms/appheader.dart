
import 'package:eazyfintask/widgets/atoms/Subhead3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appheader extends StatelessWidget {
  final String title;

  const Appheader({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 60,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: (){
         Get.back();
        },
       icon: Icon(Icons.arrow_back_ios_rounded,),
      color:Colors.black,
      
      ),
titleSpacing: 0,
     title:Subhead3(text: this.title,),
     
      elevation:0.0 ,
      

    );
  }
}