import 'package:apartment_management/presentation/screen/dashboard/balance_sheet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'balance_sheet.dart';
import '../../../core/const.dart';
import '../../../core/strings.dart';

class ServiceContact extends StatefulWidget {
  const ServiceContact({Key? key}) : super(key: key);

  @override
  State<ServiceContact> createState() => _ServiceContactState();
}

class _ServiceContactState extends State<ServiceContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text(Strings.servicecon,
                    style: TextStyle(
                        color: Const.header,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: Const.kPadding44.r),
            Container(
              height: 116.h,
              width: 345.w,
              color: Const.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingS.r),
                        child: Text(
                          Strings.cleaningservice,
                          style: TextStyle(
                              fontSize: Const.kFont15.r,
                              color: Const.bluecolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 8),
                        child: Text(
                          Strings.servicecom,
                          style: TextStyle(
                              fontSize: Const.kFont11.r, color: Const.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingM.r),
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          color: Const.white,
                          child: SvgPicture.asset(
                            'assets/image/alias.svg',
                            height: 37.h,
                            width: 37.w,
                          ),
                        ),
                      ),
                      Text(
                        Strings.alshah,
                        style: TextStyle(
                            fontSize: Const.kFont14.r, color: Const.semiheader),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 134),
                        child: Text(
                          "1H",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 22),
                        child: Text(
                          "20\$",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("+91 57896 45632",
                            style:
                                TextStyle(fontSize: 10, color: Const.subtitle)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Container(
                      height: 21.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Const.bluecolor,
                          borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                      child: Center(
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                              fontSize: Const.kFont9.r, color: Const.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
            Container(
              height: 116.h,
              width: 345.w,
              color: Const.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingS.r),
                        child: Text(
                          "WIPE THE WINDOW",
                          style: TextStyle(
                              fontSize: Const.kFont15.r,
                              color: Const.bluecolor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90, top: 8),
                        child: Text(
                          Strings.servicecom,
                          style: TextStyle(
                              fontSize: Const.kFont11.r, color: Const.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingM.r),
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          color: Const.white,
                          child: SvgPicture.asset(
                            'assets/image/alias.svg',
                            height: 37.h,
                            width: 37.w,
                          ),
                        ),
                      ),
                      Text(
                        Strings.alshah,
                        style: TextStyle(
                            fontSize: Const.kFont14.r, color: Const.semiheader),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 134),
                        child: Text(
                          "1H",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 22),
                        child: Text(
                          "20\$",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("+91 57896 45632",
                            style:
                                TextStyle(fontSize: 10, color: Const.subtitle)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Container(
                      height: 21.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Const.bluecolor,
                          borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                      child: Center(
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                              fontSize: Const.kFont9.r, color: Const.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM),
            Container(
              height: 116.h,
              width: 345.w,
              color: Const.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingS.r),
                        child: Text(
                          "CAR WASHING",
                          style: TextStyle(
                              fontSize: Const.kFont15.r,
                              color: Const.bluecolor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90, top: 8),
                        child: Text(
                          Strings.servicecom,
                          style: TextStyle(
                              fontSize: Const.kFont11.r, color: Const.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingM.r),
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          color: Const.white,
                          child: SvgPicture.asset(
                            'assets/image/alias.svg',
                            height: 37.h,
                            width: 37.w,
                          ),
                        ),
                      ),
                      Text(
                        Strings.alshah,
                        style: TextStyle(
                            fontSize: Const.kFont14.r, color: Const.semiheader),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 134),
                        child: Text(
                          "1H",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 22),
                        child: Text(
                          "20\$",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("+91 57896 45632",
                            style:
                                TextStyle(fontSize: 10, color: Const.subtitle)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Container(
                      height: 21.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Const.bluecolor,
                          borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                      child: Center(
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                              fontSize: Const.kFont9.r, color: Const.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM),
            Container(
              height: 116.h,
              width: 345.w,
              color: Const.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingS.r),
                        child: Text(
                          "BABY SITTER",
                          style: TextStyle(
                              fontSize: Const.kFont15.r,
                              color: Const.bluecolor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90, top: 8),
                        child: Text(
                          Strings.servicecom,
                          style: TextStyle(
                              fontSize: Const.kFont11.r, color: Const.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingM.r),
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          color: Const.white,
                          child: SvgPicture.asset(
                            'assets/image/alias.svg',
                            height: 37.h,
                            width: 37.w,
                          ),
                        ),
                      ),
                      Text(
                        Strings.alshah,
                        style: TextStyle(
                            fontSize: Const.kFont14.r, color: Const.semiheader),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 134),
                        child: Text(
                          "1H",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 22),
                        child: Text(
                          "20\$",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("+91 57896 45632",
                            style:
                                TextStyle(fontSize: 10, color: Const.subtitle)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Container(
                      height: 21.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Const.bluecolor,
                          borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                      child: Center(
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                              fontSize: Const.kFont9.r, color: Const.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM),
            Container(
              height: 116.h,
              width: 345.w,
              color: Const.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingS.r),
                        child: Text(
                          "PLUMBER SERVICE",
                          style: TextStyle(
                              fontSize: Const.kFont15.r,
                              color: Const.bluecolor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90, top: 8),
                        child: Text(
                          Strings.servicecom,
                          style: TextStyle(
                              fontSize: Const.kFont11.r, color: Const.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Const.kPaddingM.r, top: Const.kPaddingM.r),
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          color: Const.white,
                          child: SvgPicture.asset(
                            'assets/image/alias.svg',
                            height: 37.h,
                            width: 37.w,
                          ),
                        ),
                      ),
                      Text(
                        Strings.alshah,
                        style: TextStyle(
                            fontSize: Const.kFont14.r, color: Const.semiheader),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 134),
                        child: Text(
                          "1H",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: Const.kPaddingM.r, left: 22),
                        child: Text(
                          "20\$",
                          style: TextStyle(
                              fontSize: Const.kFont14.r,
                              color: Const.semiheader),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("+91 57896 45632",
                            style:
                                TextStyle(fontSize: 10, color: Const.subtitle)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Container(
                      height: 21.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Const.bluecolor,
                          borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "BOOK NOW",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Const.kFont9.r),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return BalanceSheet();
                                      }));
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
