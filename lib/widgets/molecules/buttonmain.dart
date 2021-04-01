import 'package:eazyfintask/utils.dart/colors.dart';

import 'package:eazyfintask/widgets/atoms/buttontext.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final text;
    final VoidCallback onPressed;

  const Button({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
                    child: SizedBox(
                      height: 40,
                      width:  MediaQuery.of(context).size.width,
                      child: MaterialButton(
                          onPressed:onPressed,
                          color: primary,
                          elevation: 1,
                          focusElevation: 1,
                          highlightElevation: 1,
                          highlightColor: primary,
                          focusColor: primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Butontext(
                            text: text,
                          )),
                    ),
                  );
  }
}