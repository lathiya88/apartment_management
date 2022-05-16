import 'package:apartment_management/core/strings.dart';
import 'package:apartment_management/presentation/screen/authentication/verification_otp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding70),
              child: Center(
                child: Text(Strings.forpass,
                    style: TextStyle(
                        color: Const.header, fontSize: Const.kFont22.r)),
              ),
            ),
            SizedBox(
              height: Const.kPadding70.r,
            ),
            Padding(
                padding: EdgeInsets.only(left: Const.kPadding10.r),
                child: Text(
                  Strings.emailtoreset,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Const.subtitle,
                    fontSize: Const.kFont15,
                  ),
                )),
            SizedBox(
              height: Const.kPaddingXXL.r,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.email,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kPaddingM),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: Strings.mail,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Const.kPadding20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXL.r,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingXL.r),
                  child: Text(
                    Strings.resendcode,
                    style: TextStyle(
                        fontSize: Const.kPaddingM.r, color: Const.bluecolor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding100.r,
            ),
            Container(
              height: Const.kPaddingXXL.r,
              width: Const.kPadding284.r,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPaddingXL.r,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Const.bluecolor,
                  borderRadius: BorderRadius.circular(Const.kPadding20)),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: Strings.verfica,
                          style: TextStyle(
                              color: Colors.white, fontSize: Const.kFont15.r),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return VerificationOtp();
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
