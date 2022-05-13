import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const.dart';
import '../../../core/strings.dart';

class ManageFlat extends StatefulWidget {
  const ManageFlat({Key? key}) : super(key: key);

  @override
  State<ManageFlat> createState() => _ManageFlatState();
}

class _ManageFlatState extends State<ManageFlat> {
  bool _pressNo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60),
              child: Center(
                child: Text(Strings.mngflt,
                    style: TextStyle(
                        color: Const.header,
                        fontSize: Const.kFont22.r,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: Const.kPaddingXL.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.rented,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pressNo = !_pressNo;
                });
              },
              child: Row(
                children: [
                  Container(
                    height: Const.kPadding40.r,
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
                          height: Const.kPaddingXL.r,
                          width: Const.kPadding170.r,
                          decoration: BoxDecoration(
                              color: _pressNo
                                  ? Const.bluecolor
                                  : Const.offwhite.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Strings.yes,
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
                          height: Const.kPaddingXL.r,
                          width: Const.kPadding170.r,
                          decoration: BoxDecoration(
                              color: _pressNo
                                  ? Const.offwhite.withOpacity(0.4)
                                  : Const.bluecolor,
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Strings.no,
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
            SizedBox(height: Const.kPadding10.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.rentaldetail,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Container(
              height: Const.kPadding208.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              child: Container(
                padding: EdgeInsets.only(
                    left: Const.kPaddingS.r, top: Const.kPadding20.r),
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: Strings.rentalname,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPadding10),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Const.kPadding10),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: Strings.contctno,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPadding10),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Const.kPadding10.r),
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
                          borderRadius:
                              BorderRadius.circular(Const.kPadding20.r)),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: Strings.addmem,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Const.kFont15.r,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Const.kPaddingM.r, left: Const.kPadding3.r),
                  child: Text(
                    Strings.changepass,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kPaddingS.r),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Const.subtitle),
                  hintText: Strings.changepass,
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
                  padding: EdgeInsets.only(
                      top: Const.kPaddingM.r, left: Const.kPadding3.r),
                  child: Text(
                    Strings.maintancetype,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kPaddingS.r),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Const.subtitle),
                  hintText: Strings.changepass,
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
                  padding: EdgeInsets.only(
                      top: Const.kPaddingM.r, left: Const.kPadding3.r),
                  child: Text(
                    Strings.addvehi,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
                Container(
                  height: Const.kPaddingM.r,
                  width: Const.kPaddingXXL.r,
                  decoration: BoxDecoration(
                      color: Const.bluecolor,
                      borderRadius: BorderRadius.circular(Const.kPadding10.r)),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Container(
              height: Const.kPadding120.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              child: Table(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
