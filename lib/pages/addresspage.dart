import 'package:eazyfintask/models/Addressmodel.dart';
import 'package:eazyfintask/models/financedetailsmodel.dart';
import 'package:eazyfintask/pages/summarypage.dart';
import 'package:eazyfintask/utils.dart/colors.dart';

import 'package:eazyfintask/widgets/atoms/formtext2.dart';
import 'package:eazyfintask/widgets/molecules/buttonmain.dart';
import 'package:eazyfintask/widgets/organisms/appheader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Addresspage extends StatefulWidget {
  final FinanceDetails financedetails;

  const Addresspage({Key key, this.financedetails}) : super(key: key);
  @override
  _AddresspageState createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
 bool _validateAndSaveForm() {
    final form = _formk.currentState;

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
      final address =  AddressModel(house: house, area: area, landmark: landmark, pincode: pincode, city: city, state: state, phonenumber: phonenumber);
      Get.to(SummaryPage(
        financeDetails: widget.financedetails,
        addressModel: address,
      ));
    }
  }


 String house='B-123,jjsskskk';
String area='New Ashok Nagar';
 String landmark='New Ashok Nagar Metro Station';
 String pincode='110069';
 String city='Delhi';
 String state ='Delhi';
 String phonenumber='093349496';
    final _formk = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          Appheader(title:'Office Address'),
          SliverToBoxAdapter(
            child: Form(
              key: _formk,
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _addressformwidget(),
                  SizedBox(height: 100,),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Container(
                       child: Align(
                         alignment: Alignment.bottomCenter,
                                              child: Button(onPressed: (){
                  
                                _submit() ;
                  },
                  text: 'Update',
                  ),
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


    Widget _addressformwidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildSalaryFormChildrens(context),
      ),
    );
  }

  List<Widget> _buildSalaryFormChildrens(context) {
    return [
    Formtext2 (text: 'Flat,House,Building Number',),
      TextFormField(
        autofocus: false,
      
        decoration: InputDecoration(
                  hintStyle: GoogleFonts.lato(fontSize: 14),
          hintText: 'Flat,House,Building Number',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          
        ),
        style: GoogleFonts.lato(fontSize: 17),
        initialValue: house,
        validator: (value) =>
            value.isNotEmpty ? null : 'Flat,House,Building Number can\'t be empty',
        onSaved: (value) => house = value,
      ),
      SizedBox(
        height: 20,
      ),
       Formtext2(text: 'Area Locality Street',),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintStyle: GoogleFonts.lato(fontSize: 17),
          hintText: 'Area Locality Street',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        initialValue: area,
        style: GoogleFonts.lato(fontSize: 17),
        validator: (value) =>
            value.isNotEmpty ? null : 'Area Locality Street can\'t be empty',
        onSaved: (value) => area = value,
      ),
      SizedBox(
        height: 20,
      ),
       Formtext2(text: 'Landmark',),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type Salary',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        initialValue: landmark,
        validator: (value) =>
            value.isNotEmpty ? null : 'Landmark can\'t be empty',
        onSaved: (value) => landmark = value,
      ),
       SizedBox(
        height: 20,
      ),
       Formtext2(text: 'Pincode',),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type Pincode',
           hintStyle: GoogleFonts.lato(fontSize: 17),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        initialValue: pincode,
        style: GoogleFonts.lato(fontSize: 17),
        validator: (value) =>
            value.isNotEmpty ? null : 'Pincode can\'t be empty',
        onSaved: (value) => pincode = value,
      ),
       SizedBox(
        height: 20,
      ),
       Formtext2(text: 'City',),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Type City',
          hintStyle: GoogleFonts.lato(fontSize: 17),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        initialValue: city,
        style: GoogleFonts.lato(fontSize: 17),
        validator: (value) =>
            value.isNotEmpty ? null : 'City can\'t be empty',
        onSaved: (value) => city = value,
      ),
        SizedBox(
        height: 20,
      ),
      Formtext2(text: 'State',),
      TextFormField(
        autofocus: false,
        style:  GoogleFonts.lato(fontSize: 17),

        decoration: InputDecoration(
          hintStyle:  GoogleFonts.lato(fontSize: 17),
          hintText: 'Type State',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primary, width: .6),
          ),
        ),
        initialValue: state,
        validator: (value) =>
            value.isNotEmpty ? null : 'State can\'t be empty',
        onSaved: (value) => state = value,
      )
    ];
  }
  }
