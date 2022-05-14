import 'package:apartment_management/core/const.dart';
import 'package:apartment_management/core/strings.dart';
import 'package:apartment_management/presentation/screen/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding70.r),
              child: Center(
                child: Text(
                  Strings.resetpass,
                  style:
                      TextStyle(fontSize: Const.kFont22.r, color: Const.header),
                ),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXXL.r,
            ),
            Padding(
              padding: EdgeInsets.only(left: Const.kSpace10.r),
              child: Text(
                Strings.newpasstologin,
                style:
                    TextStyle(fontSize: Const.kFont15, color: Const.subtitle),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXXL.r,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kSpace10.r),
                  child: Text(
                    Strings.newpass,
                    style: TextStyle(fontSize: Const.kFont12.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kSpace10.r),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(Const.kPadding20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Const.kPadding20.r,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kSpace10.r),
                  child: Text(
                    Strings.confirmnewpass,
                    style: TextStyle(fontSize: Const.kFont12.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kSpace10.r),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Const.kPadding20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXXL.r,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  barrierColor: Colors.black87,
                  context: context,
                  builder: (BuildContext context) {
                    return Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: Const.kPadding381.r,
                          width: Const.kPadding284.r,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: Const.kPadding20.r),
                              SvgPicture.asset(
                                'assets/image/dailog.svg',
                                height: Const.kPadding148.r,
                                width: Const.kPadding137.r,
                              ),
                              SizedBox(height: Const.kPaddingXL.r),
                              const Text(
                                "Congratulations!",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Const.bluecolor,
                                ),
                              ),
                              SizedBox(
                                height: Const.kPadding20.r,
                              ),
                              Text(
                                Strings.readytouse,
                                style: TextStyle(
                                    color: Const.header,
                                    fontSize: Const.kFont15.r),
                              ),
                              SizedBox(height: Const.kPaddingXL.r),
                              Container(
                                height: Const.kPaddingXXL.r,
                                width: Const.kPadding227.r,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Const.bluecolor.withOpacity(0.4),
                                        spreadRadius: 4,
                                        blurRadius: Const.kPaddingXL.r,
                                        offset: Offset(0, 3)),
                                  ],
                                  color: Const.bluecolor,
                                  borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                                ),
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: Strings.gotohome,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Const.kFont15.r,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return DashBoard();
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
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: Const.kPaddingXXL.r,
                width: Const.kPadding284.r,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Const.bluecolor.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: Const.kPaddingXL.r,
                        offset: Offset(0, 2)),
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: Strings.cont,
                          style: TextStyle(
                              color: Colors.white, fontSize: Const.kFont15.r),
                        ),
                      ],
                    ),
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
