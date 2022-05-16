import 'package:apartment_management/presentation/screen/dashboard/transactions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/const.dart';
import '../../../core/strings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text("Profile",
                    style: TextStyle(
                        color: Const.header,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 47, left: 139),
            ),
            SvgPicture.asset(
              'assets/image/img.svg',
              height: 99.h,
              width: 100.w,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 21),
                  child: Text(
                    "User Name",
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded,
                        color: Const.subtitle),
                    hintText: "User Name",
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: Const.kPadding16.r),
                  child: Text(
                    "Gender",
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Row(
              children: [
                Container(
                  height: 47.h,
                  width: 111.w,
                  decoration: BoxDecoration(
                      color: Const.bluecolor,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Const.lghtgrey)),
                  child: Center(
                    child: Text("Female",
                        style: TextStyle(
                            fontSize: Const.kFont12.r, color: Const.white)),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 47.h,
                  width: 111.w,
                  decoration: BoxDecoration(
                      color: Const.lightgrey,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Const.lghtgrey)),
                  child: Center(
                    child: Text("Male",
                        style: TextStyle(
                            fontSize: Const.kFont12.r, color: Const.gry)),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 47.h,
                  width: 111.w,
                  decoration: BoxDecoration(
                      color: Const.lightgrey,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Const.lghtgrey)),
                  child: Center(
                    child: Text("Other",
                        style: TextStyle(
                            fontSize: Const.kFont12.r, color: Const.gry)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 21),
                  child: Text(
                    "BIRTH DATE",
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.date_range_outlined, color: Const.subtitle),
                    hintText: "BIRTH DATE",
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.email,
                    style: TextStyle(fontSize: Const.kFont12.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail, color: Const.subtitle),
                    hintText: Strings.email,
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.contactnum,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.add_ic_call_outlined, color: Const.subtitle),
                    hintText: Strings.contactnum,
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.apartname,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.apartment_rounded, color: Const.subtitle),
                    hintText: Strings.apartname,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.cty,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding5.r),
              child: Container(
                height: 50.h,
                width: 345.w,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.add_location, color: Const.subtitle),
                    hintText: "City Name",
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33.h),
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
                                return Transactions();
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
