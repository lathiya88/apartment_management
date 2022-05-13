import 'package:apartment_management/core/const.dart';
import 'package:apartment_management/core/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import '../../../gen/assets.gen.dart';
import 'create_account.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'forgot_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true, isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: Const.kSpace150,
      ),
      Padding(
          padding: EdgeInsets.only(left: 10.h.w),
          child: Text(
            Strings.loginaccount,
            style: TextStyle(
              color: Const.header,
              fontSize: Const.kFont37,
              fontWeight: FontWeight.bold,
            ),
          )),
      SizedBox(
        height: Const.kPaddingXXL.r,
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: Const.kPadding10.r),
            child: Text(
              Strings.email,
              style: TextStyle(fontSize: Const.kFont11.r),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(Const.kPaddingM.r),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mail, color: Colors.grey),
            hintText: Strings.email,
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: Const.kPadding10.r),
            child: Text(
              Strings.passwrord,
              style: TextStyle(fontSize: Const.kFont15.r),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(Const.kPaddingM.r),
        child: TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock, color: Const.subtitle),
            hintText: Strings.passwrord,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child:
                    Icon(isObscure ? Icons.visibility : Icons.visibility_off)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: Strings.forgot,
                style: TextStyle(
                  color: Const.subtitle,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgotPassword();
                    }));
                  }),
          ],
        ),
      ),
      // Padding(
      //   padding: EdgeInsets.only(right: 20.h.w),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       Text("Forgot Password?", style: TextStyle(color: Colors.grey)),
      //     ],
      //   ),
      // ),
      Padding(
        padding: EdgeInsets.only(top: Const.kPadding20.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = !isChecked;
                setState(() {});
              },
            ),
            Text(
              Strings.remember,
              style: TextStyle(color: Const.black),
            ),
          ],
        ),
      ),
      SizedBox(height: Const.kSpace30H.r),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateAccount();
          }));
        },
        child: Container(
          height: Const.kSpace50.r,
          width: Const.kSpace284.r,
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
              borderRadius: BorderRadius.circular(Const.kPadding20.r)),
          child: Center(
            child: Text(
              Strings.login,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Const.kFont15.r,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      SizedBox(height: Const.kSpace40H.r),
      Row(children: <Widget>[
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(
                  left: Const.kPadding10, right: Const.kPaddingM),
              child: Divider(
                color: Colors.black,
                height: 50.h,
              )),
        ),
        Text(
          "or continue with",
          style: TextStyle(color: Colors.grey),
        ),
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(
                  left: Const.kPaddingM, right: Const.kPadding10),
              child: Divider(
                color: Const.header,
                height: Const.kSpace50.r,
              )),
        ),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Const.kSpace40H.r,
            width: Const.kSpace87W,
            color: Colors.white60,
            child: SvgPicture.asset(
              'assets/image/facebook.svg',
              height: Const.kPaddingXXL.r,
            ),
          ),
          Container(
            height: Const.kSpace40H.r,
            width: Const.kSpace87W,
            color: Colors.white60,
            child: SvgPicture.asset(
              'assets/image/google.svg',
              height: Const.kPaddingXXL.r,
            ),
          ),
          Container(
            height: Const.kSpace40H.r,
            width: Const.kSpace87W.r,
            color: Colors.white60,
            child: SvgPicture.asset(
              'assets/image/apple.svg',
              height: Const.kPaddingXXL.r,
            ),
          ),
        ],
      ),
      SizedBox(height: Const.kPadding10.r),
      RichText(
        text: TextSpan(
          text: Strings.nothave,
          style: TextStyle(color: Const.subtitle),
          children: <TextSpan>[
            TextSpan(
                text: Strings.signup,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Const.header),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CreateAccount();
                    }));
                  }),
          ],
        ),
      ),
      SizedBox(height: Const.kPadding10.r),
    ])));
  }
}
