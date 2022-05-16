import 'package:apartment_management/presentation/screen/dashboard/account_master.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';

class BalanceSheet extends StatefulWidget {
  const BalanceSheet({Key? key}) : super(key: key);

  @override
  State<BalanceSheet> createState() => _BalanceSheetState();
}

class _BalanceSheetState extends State<BalanceSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text("Balance Sheet",
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
                  "Account Master",
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
                  "SUPPLIER MASTER",
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
                  "TRANSACTIONS",
                  style:
                      TextStyle(fontSize: Const.kFont18.r, color: Const.white),
                ),
              ),
            ),
            SizedBox(height: Const.kPaddingL),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AccountMaster();
                }));
              },
              child: Container(
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
                    "TRANSACTION LOG",
                    style: TextStyle(
                        fontSize: Const.kFont18.r, color: Const.white),
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
