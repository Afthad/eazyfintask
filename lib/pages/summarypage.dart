import 'package:eazyfintask/models/Addressmodel.dart';
import 'package:eazyfintask/models/financedetailsmodel.dart';
import 'package:eazyfintask/widgets/atoms/addresstext.dart';
import 'package:eazyfintask/widgets/atoms/Headtext1.dart';
import 'package:eazyfintask/widgets/atoms/addresstextgrey.dart';
import 'package:eazyfintask/widgets/atoms/greytextRow1cardleft.dart';
import 'package:eazyfintask/widgets/atoms/textRow1right.dart';
import 'package:eazyfintask/widgets/molecules/buttonmain.dart';
import 'package:eazyfintask/widgets/organisms/card.dart';
import 'package:eazyfintask/widgets/molecules/cardrow1.dart';
import 'package:eazyfintask/widgets/organisms/appheader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SummaryPage extends StatefulWidget {
  final FinanceDetails financeDetails;
  final AddressModel addressModel;

  const SummaryPage({Key key, this.financeDetails, this.addressModel}) : super(key: key);
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  bool enable=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          Appheader(title: ''),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Headttext1(
                    text: 'Order Summary',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Basic Details',
                    details: [
                      CardRow1(
                        isgrey: false,
                        textleft: 'Name',
                        textright: 'John Doe',
                      ),
                       CardRow1(
                         isgrey: false,
                        textleft: 'Fathers Name',
                        textright: 'Allu Arjun',
                      ), CardRow1(
                        isgrey: true,
                        textleft: 'Mothers Name',
                        textright: 'Sarojini',
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Employment Details',
                    details: [
                      CardRow1(
                        isgrey: false,
                        textleft: 'Company Name',
                        textright: 'Wipro',
                      ),
                       CardRow1(
                         isgrey: false,
                        textleft: 'Organization Name',
                        textright: 'Limited Company',
                      ), CardRow1(
                        isgrey: true,
                        textleft: 'Designation',
                        textright: 'Manager',
                      ),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                   
                    
                    title: 'Education Details',
                    details: [
                      CardRow1(
                        isgrey: false,
                        textleft: 'Qualification',
                        textright: 'Graduate',
                      ),
                       CardRow1(
                         isgrey: false,
                        textleft: 'Type of degree',
                        textright: 'BCA',
                      ), CardRow1(
                        isgrey: true,
                        textleft: 'Institution',
                        textright: 'PTU',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Bank Details',
                    details: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row1cardtextRight(text: 'HDFC Bank',)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row1cardtextRight(text: 'HDFC100899',)),
                      ),
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: GreyRow1cardtext(text: 'Vatika Bussiness Park Block 1- Gurgaon Road',)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Residential Address info',
                    details: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Addresstext(text: 'Vatika Bussiness Park  Block 1 - Sohna Gurgaon Rd,Vatika City Block W,Badashpur Sector 49',),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Addresstextgrey(text: 'Gurgaon,Haryana -111001')),
                      )
                    ],
                  ),
                  
                ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Office address',
                    details: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                           alignment: Alignment.centerLeft,
                                                  child: Addresstext(text: widget.addressModel.house +' ' +widget.addressModel.area +' '+widget.addressModel.landmark
                          ,),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                                                  child: Addresstextgrey(text: widget.addressModel.city +',' +widget.addressModel.state +'-'+widget.addressModel.pincode
                          ,),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardSummary(
                    title: 'Financial Details',
                    details: [
                      CardRow1(
                        isgrey: false,
                        textleft: 'January',
                        textright: widget.financeDetails.month1sal,
                      ),
                       CardRow1(
                         isgrey: false,
                        textleft: 'February',
                        textright: widget.financeDetails.month2sal,
                      ), CardRow1(
                        isgrey: true,
                        textleft: 'March',
                        textright: widget.financeDetails.month3sal,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Button(
                        onPressed: () {
                          Get.to(SummaryPage());
                        },
                        text: 'Update',
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
