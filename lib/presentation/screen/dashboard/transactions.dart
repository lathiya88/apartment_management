import 'package:apartment_management/presentation/screen/dashboard/profile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text("Transactions",
                    style: TextStyle(
                        color: Const.header,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 48),
            Container(
              height: Const.kPaddingXXL.r,
              width: Const.kPadding345.r,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Const.bluecolor.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPadding10.r,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPaddingM.r)),
              child: Center(
                child: Text(
                  "EXPENSES / PURCHASE",
                  style:
                      TextStyle(fontSize: Const.kFont18.r, color: Const.white),
                ),
              ),
            ),
            SizedBox(height: Const.kPaddingL),
            Container(
              height: Const.kPaddingXXL.r,
              width: Const.kPadding345.r,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Const.bluecolor.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPadding10.r,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPaddingM.r)),
              child: Center(
                child: Text(
                  "INCOME / RECEIPT",
                  style:
                      TextStyle(fontSize: Const.kFont18.r, color: Const.white),
                ),
              ),
            ),
            SizedBox(height: Const.kPaddingL),
            Container(
              height: Const.kPaddingXXL.r,
              width: Const.kPadding345.r,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Const.bluecolor.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPadding10.r,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPaddingM.r)),
              child: Center(
                child: Text(
                  "CASH DEPOSIT / CASH WITHDRAWAL",
                  style:
                      TextStyle(fontSize: Const.kFont18.r, color: Const.white),
                ),
              ),
            ),
            SizedBox(height: 403.h),
            Container(
              height: Const.kSpace50.r,
              width: Const.kSpace284.r,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Const.bluecolor.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPadding10.r,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPadding20.r)),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "TRANSACTION LOG",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Const.kFont15.r,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Profile();
                              }));
                            }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
