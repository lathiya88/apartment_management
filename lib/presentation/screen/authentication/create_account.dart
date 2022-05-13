import 'package:apartment_management/core/const.dart';
import 'package:apartment_management/core/strings.dart';
import 'package:apartment_management/presentation/screen/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var showCities;

  bool isObscure = true;
  bool _pressAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: Const.kPaddingM.r,
          ),
          Padding(
              padding: EdgeInsets.only(top: Const.kPaddingXXL.r),
              child: Text(
                Strings.createacc,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Const.black,
                  fontSize: Const.kFont37.r,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: Const.kPadding10.r,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pressAdmin = !_pressAdmin;
              });
            },
            child: Row(
              children: [
                Container(
                  height: Const.kPaddingXXL.r,
                  width: Const.kPadding345.r,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Const.offwhite.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: Const.kPadding10.r,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Const.offwhite,
                      borderRadius: BorderRadius.circular(Const.kPaddingS.r)),
                  child: Row(
                    children: [
                      Container(
                        height: Const.kPadding44.r,
                        width: Const.kPadding170.r,
                        decoration: BoxDecoration(
                            color: _pressAdmin
                                ? Const.bluecolor
                                : Const.offwhite.withOpacity(0.4),
                            borderRadius:
                                BorderRadius.circular(Const.kPaddingS.r)),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: Strings.admin,
                                  style: TextStyle(
                                    color: Const.white,
                                    fontSize: Const.kFont12.r,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Const.kPadding44.r,
                        width: Const.kPadding170.r,
                        decoration: BoxDecoration(
                            color: _pressAdmin
                                ? Const.offwhite.withOpacity(0.4)
                                : Const.bluecolor,
                            borderRadius:
                                BorderRadius.circular(Const.kPaddingS.r)),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: Strings.household,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Const.kFont12.r,
                                  ),
                                ),
                              ],
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
          SizedBox(height: Const.kPaddingXXL.r),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Const.kPaddingM.r),
                child: Text(
                  Strings.firstname,
                  style: TextStyle(fontSize: Const.kFont11.r),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top : Const.kPadding5.r),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people, color: Const.subtitle),
                hintText: Strings.firstname,
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Const.kPadding10.r),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Const.kPaddingM.r),
                child: Text(
                  Strings.lastname,
                  style: TextStyle(fontSize: Const.kFont11.r),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top : Const.kPadding5.r),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people, color: Const.subtitle),
                hintText: Strings.lastname,
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Const.kPadding10.r),
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
            padding: EdgeInsets.only(top : Const.kPadding5.r),
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
          SizedBox(height: Const.kPadding10.r),
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
            padding: EdgeInsets.only(top : Const.kPadding5.r),
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
          SizedBox(height: Const.kPadding10.r),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Const.kPaddingM.r),
                child: Text(
                  Strings.createpass,
                  style: TextStyle(fontSize: Const.kFont11.r),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top : Const.kPadding5.r),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Const.subtitle),
                hintText: Strings.createpass,
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Const.kPadding10.r),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Const.kPaddingM.r),
                child: Text(
                  Strings.confirmpass,
                  style: TextStyle(fontSize: Const.kFont11.r),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top : Const.kPadding5.r),
            child: TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Const.subtitle),
                hintText: Strings.confirmpass,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Const.kPadding10.r),
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
            padding: EdgeInsets.only(top : Const.kPadding5.r),
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
          SizedBox(height: Const.kPadding10.r),
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
            padding: EdgeInsets.only(top : Const.kPadding5.r),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.add_location, color: Const.subtitle),
                hintText: Strings.cty,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Const.kPadding10.r,
          ),
          Container(
            height: Const.kPaddingXXL.r,
            width: Const.kPadding284.r,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.4),
                    spreadRadius: 4,
                    blurRadius: 15.h.w,
                    offset: Offset(0, 3),
                  )
                ],
                color: Const.bluecolor,
                borderRadius: BorderRadius.circular(Const.kSpaceM.r)),
            child: Center(
              child: Text(
                Strings.createadmin,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Const.kFont15.r,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: Const.kPadding10.r,
          ),
          RichText(
            text: TextSpan(
              text: Strings.alreadyhave,
              style: TextStyle(color: Colors.grey, fontSize: Const.kFont14.r),
              children: <TextSpan>[
                TextSpan(
                    text: Strings.signin,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: Const.kFont14.r),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
