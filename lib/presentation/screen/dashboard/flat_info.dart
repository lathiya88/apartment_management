import 'package:apartment_management/core/strings.dart';
import 'package:apartment_management/presentation/screen/dashboard/request_complain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const.dart';

class Flat_Info extends StatefulWidget {
  const Flat_Info({Key? key}) : super(key: key);

  @override
  State<Flat_Info> createState() => _Flat_InfoState();
}

bool _pressNo = false;

class _Flat_InfoState extends State<Flat_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60),
              child: Center(
                child: Text(Strings.fltinfo,
                    style: TextStyle(
                        color: Const.header,
                        fontSize: Const.kFont22.r,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: Const.kPadding30.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.jbin,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont15.r,
                        color: Const.bluecolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.fltno,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r,
                        color: Const.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Const.kPaddingS),
                  child: Container(
                    height: Const.kPadding20.r,
                    width: Const.kPadding100.r,
                    decoration: BoxDecoration(
                      color: Const.offwhite,
                      borderRadius: BorderRadius.circular(Const.kPaddingS.r),
                    ),
                    child: Center(
                      child: Text(
                        Strings.c310,
                        style: TextStyle(
                            fontSize: Const.kFont11.r,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding20.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.myfltdetail,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont15.r,
                        color: Const.bluecolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding10.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.contactno,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r,
                        color: Const.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Const.kPaddingS),
                  child: Container(
                    height: Const.kPadding20.r,
                    width: Const.kPadding120.r,
                    decoration: BoxDecoration(
                      color: Const.offwhite,
                      borderRadius: BorderRadius.circular(Const.kPaddingS.r),
                    ),
                    child: Center(
                      child: Text(
                        Strings.fltdetail,
                        style: TextStyle(
                            fontSize: Const.kFont11.r,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.flatmem,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding5,
            ),
            Container(
              height: Const.kPadding120.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              padding: EdgeInsets.only(
                  top: Const.kPadding10.r, left: Const.kPaddingL.r),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        Strings.name,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.age,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.gender,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        Strings.abc,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.age15,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.female,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Text(
                      Strings.xyz,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.age25,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.male,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      Strings.pqr,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.age40,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.female,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      Strings.mnp,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.age45,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.male,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ])
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.vehiclelist,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding5,
            ),
            Container(
              height: Const.kPadding107.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              padding: EdgeInsets.only(
                  top: Const.kPadding10.r, left: Const.kPaddingL.r),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        Strings.vehicle,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.number,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        Strings.forwhel,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.numbrplate,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Text(
                      Strings.twowhel,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.numbrplate,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      Strings.twowhel,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.numbrplate,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.maintance,
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: Const.kFont9.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding5,
            ),
            Container(
              height: Const.kPadding120.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              padding: EdgeInsets.only(
                  top: Const.kPadding10.r, left: Const.kPaddingL.r),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        Strings.month,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.status,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        Strings.jan,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.paid,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Text(
                      Strings.feb,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.paid,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      Strings.march,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                    Text(
                      Strings.pending,
                      style: TextStyle(
                          color: Const.black, fontSize: Const.kFont9.r),
                      textScaleFactor: 1.5,
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.vehilog,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 130.h,
                width: 500.w,
                color: Const.offwhite,
                padding: EdgeInsets.only(
                    top: Const.kPadding10.r, left: Const.kPaddingL.r),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Text(
                          Strings.vehicno,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.datime,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            Strings.status,
                            style: TextStyle(
                                color: Const.bluecolor,
                                fontSize: Const.kFont12.r,
                                fontWeight: FontWeight.bold),
                            textScaleFactor: 1.5,
                          ),
                        ),
                        Text(
                          Strings.vehictype,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          Strings.numbrplate,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.date6,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            Strings.inin,
                            style: TextStyle(
                                color: Const.black, fontSize: Const.kFont9.r),
                            textScaleFactor: 1.5,
                          ),
                        ),
                        Text(
                          Strings.twowhel,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    TableRow(children: [
                      Text(
                        Strings.numbrplate,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.date10,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          Strings.out,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                      ),
                      Text(
                        Strings.twowhel,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingS),
                  child: Text(
                    Strings.fltlog,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Const.kFont12.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const.kPadding5,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Container(
                height: 80.h,
                width: 400.w,
                color: Const.offwhite,
                padding: EdgeInsets.only(
                    top: Const.kPadding10.r, left: Const.kPaddingL.r),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Text(
                          Strings.datet,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.status,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.member,
                          style: TextStyle(
                              color: Const.bluecolor,
                              fontSize: Const.kFont12.r,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          Strings.date6,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.locked,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                        Text(
                          Strings.female,
                          style: TextStyle(
                              color: Const.black, fontSize: Const.kFont9.r),
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    TableRow(children: [
                      Text(
                        Strings.date10,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.unlocked,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.male,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: Const.kPaddingM.r),
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
            SizedBox(
              height: Const.kPaddingM.r,
            ),
            Container(
              height: Const.kPadding60.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              padding: EdgeInsets.only(
                  top: Const.kPadding10.r, left: Const.kPaddingL.r),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        Strings.rented,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.rentelname,
                        style: TextStyle(
                            color: Const.bluecolor,
                            fontSize: Const.kFont12.r,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        Strings.contactno,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        Strings.rentelname1,
                        style: TextStyle(
                            color: Const.black, fontSize: Const.kFont9.r),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPadding30.r),
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
                                return RequestComplain();
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
