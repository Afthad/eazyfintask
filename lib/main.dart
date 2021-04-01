import 'package:eazyfintask/pages/financialpage.dart';
import 'package:eazyfintask/utils.dart/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EasyFin Task',
      theme: ThemeData(
       
        accentColor: primary,
        backgroundColor: Colors.white,

      ),
      home: FinancialPage(),
    );
  }
}

