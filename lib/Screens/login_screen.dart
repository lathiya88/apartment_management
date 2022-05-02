import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true,
      isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
              height: 150.h,
            ),
            Padding(
                padding:  EdgeInsets.only(left: 10.h.w),
                child: Text(
                  'Login With Your Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.sp,
                  ),
                )),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.h.w),
                  child: Text(
                    "Email",
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.h.w),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: Colors.grey),
                  hintText: "Email",
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
                  padding:  EdgeInsets.only(left: 10.h.w),
                  child: Text(
                    "Password",
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.h.w),
              child: TextField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.grey),
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child:
                      Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 20.h.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      "Forgot Password?", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h.w),
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
                    "Remember Me",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              height: 50.h,
              width: 250.w,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.4),
                  spreadRadius: 4,
                  blurRadius: 10.h.w,
                  offset: Offset(0, 3),
                )
              ],
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.h.w)),
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h.w,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50.h,
                    )),
              ),
              Text("or continue with"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50.h,
                    )),
              ),
            ]),
            Row(
              children: [
              Container(
                height: 100.h,
                width: 100.w,
              color: Colors.grey,
              child: SvgPicture.asset(
                'image/facebook.svg',
                fit: BoxFit.fill,

              ),
              ) ],)


        ])));
  }
}
