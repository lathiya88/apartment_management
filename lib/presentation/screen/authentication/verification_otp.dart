import 'package:apartment_management/presentation/screen/authentication/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../core/const.dart';
import '../../../core/strings.dart';

class VerificationOtp extends StatelessWidget {
  const VerificationOtp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Const.kPaddingXXL.r),
            Padding(
              padding: EdgeInsets.only(top: Const.kFont15.r),
              child: Center(
                child: Text(Strings.verification,
                    style: Const.medium.copyWith(
                        fontSize: Const.kFont22.r, color: Const.header)),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXL,
            ),
            Padding(
              padding: EdgeInsets.only(left: Const.kPaddingS),
              child: Text(
                Strings.mainheading,
                textAlign: TextAlign.start,
                style:
                    TextStyle(fontSize: Const.kFont15.r, color: Const.subtitle),
              ),
            ),
            SizedBox(
              height: Const.kPaddingXXL.r,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: Const.kPaddingM.r),
                    child: Text(
                      Strings.subheading,
                      style: TextStyle(
                          fontSize: Const.kFont12.r, color: Const.black),
                    )),
              ],
            ),
            SizedBox(
              height: Const.kPaddingL.r,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 54,
              style: TextStyle(fontSize: Const.kPaddingM.r),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: Const.kPaddingXL.r,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kSpace20H.r),
                  child: Text(
                    Strings.resend,
                    style: TextStyle(
                        fontSize: Const.kFont12, color: Const.bluecolor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kSpace150,
            ),
            Container(
              height: Const.kPaddingXXL.r,
              width: Const.kPadding284.r,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Const.bluecolor.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: Const.kPaddingM.r,
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
                          text: Strings.contine,
                          style: TextStyle(
                              color: Const.white, fontSize: Const.kFont15),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ResetPassword();
                              }));
                            }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
