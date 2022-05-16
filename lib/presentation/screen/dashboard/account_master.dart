import 'package:apartment_management/presentation/screen/dashboard/account_group.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const.dart';
import '../../../core/strings.dart';

class AccountMaster extends StatefulWidget {
  const AccountMaster({Key? key}) : super(key: key);

  @override
  State<AccountMaster> createState() => _AccountMasterState();
}

class _AccountMasterState extends State<AccountMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text("Account Master",
                    style: TextStyle(
                        color: Const.header,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 47),
                  child: Text(
                    Strings.accountname,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.accountname,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    Strings.accountgrp,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.accountgrp,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    Strings.openingbala,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.openingbala,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    Strings.dt,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.dt,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: Text(
                    Strings.remark,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: Strings.remark,
                contentPadding:
                    EdgeInsets.symmetric(vertical: Const.kPaddingXXL),
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(Const.kPaddingM),
                  ),
                ),
              ),
            ),
            SizedBox(height: 130.h),
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
                          text: Strings.save,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Const.kFont15.r,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return AccountGroup();
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
