import 'package:eazyfintask/models/financedetailsmodel.dart';
import 'package:eazyfintask/pages/addresspage.dart';
import 'package:eazyfintask/utils.dart/colors.dart';
import 'package:eazyfintask/widgets/atoms/Headtext1.dart';
import 'package:eazyfintask/widgets/atoms/formtext1.dart';
import 'package:eazyfintask/widgets/atoms/Subheading.dart';
import 'package:eazyfintask/widgets/atoms/Subhead2.dart';
import 'package:eazyfintask/widgets/atoms/Subhead3.dart';
import 'package:eazyfintask/widgets/atoms/formtext2.dart';

import 'package:eazyfintask/widgets/molecules/buttonmain.dart';
import 'package:eazyfintask/widgets/organisms/appheader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialPage extends StatefulWidget {
  @override
  _FinancialPageState createState() => _FinancialPageState();
}

class _FinancialPageState extends State<FinancialPage> {
  String salary1;
  String salary2;
  String salary3;
  String emount;

  bool _isChecked = true;

  final _formKey = GlobalKey<FormState>();
  bool _validateAndSaveForm() {
    final form = _formKey.currentState;

    if (form.validate()) {
      {
        form.save();
        return true;
      }
    }

    return false;
  }

 _submit()  {
    if (_validateAndSaveForm()) {
      final financedetails = FinanceDetails(
          month1sal: salary1, month2sal: salary2, month3sal: salary3);
      Get.to(Addresspage(
        financedetails: financedetails,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          Appheader(
            title: '',
          ),
          SliverToBoxAdapter(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Headttext1(
                      text: 'Financial Details',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Subheadingtext(
                      text: 'Enter your last 3 months income details',
                    ),
                  ),
                  _salaryformwidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Subhead2text(
                          text: 'Existing EMI if Any',
                        ),
                        SizedBox(
                          height: 10,
                          child: Switch(
                            activeColor: Colors.white,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: primary,
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  if (_isChecked == true) ...[
                    _emiformwidget(),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            color: primary,
                            onPressed: () {},
                            icon: Icon(Icons.add_circle),
                            iconSize: 30,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Subhead3(
                            text: 'Add more',
                          )
                        ],
                      ),
                    ),
                  ],
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Button(
                        onPressed: () {
                          _submit();
                        },
                        text: 'Next',
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _salaryformwidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildSalaryFormChildrens(context),
      ),
    );
  }

  Widget _emiformwidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildEmiFormChildrens(context),
      ),
    );
  }

  List<Widget> _buildEmiFormChildrens(context) {
    return [
      Formtext2(
        text: 'Enter EMI',
      ),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type EMI',
          hintStyle: GoogleFonts.lato(fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),    keyboardType: TextInputType.number,
        initialValue: emount,
        validator: (value) => value.isNotEmpty ? null : 'EMI can\'t be empty',
        onSaved: (value) => emount = value,
      ),
    ];
  }

  List<Widget> _buildSalaryFormChildrens(context) {
    return [
      Formtext1(
        text: 'Janaury',
      ),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type Salary',
          hintStyle: GoogleFonts.lato(fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        keyboardType: TextInputType.number,
        validator: (value) =>
            value.isNotEmpty ? null : 'Salary can\'t be empty',
        onSaved: (value) => salary1 = value,
      ),
      SizedBox(
        height: 20,
      ),
      Formtext1(
        text: 'February',
      ),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type Salary',
          hintStyle: GoogleFonts.lato(fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),    keyboardType: TextInputType.number,
        validator: (value) =>
            value.isNotEmpty ? null : 'Salary can\'t be empty',
        onSaved: (value) => salary2 = value,
      ),
      SizedBox(
        height: 20,
      ),
      Formtext1(
        text: 'March',
      ),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type Salary',
          hintStyle: GoogleFonts.lato(fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),    keyboardType: TextInputType.number,
        validator: (value) =>
            value.isNotEmpty ? null : 'Salary can\'t be empty',
        onSaved: (value) => salary3 = value,
      )
    ];
  }
}
