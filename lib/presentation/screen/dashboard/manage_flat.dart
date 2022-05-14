import 'package:apartment_management/presentation/screen/dashboard/service_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                      style: TextStyle(
                        fontSize: 12,
                      ),
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
                      style: TextStyle(
                        fontSize: 12,
                      ),
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
                style: TextStyle(
                  fontSize: 12,
                ),
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
                style: TextStyle(
                  fontSize: 12,
                ),
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
                SizedBox(width: Const.kPadding227.r),
                Container(
                  alignment: Alignment.center,
                  height: Const.kPaddingM.r,
                  width: Const.kPaddingXXL.r,
                  decoration: BoxDecoration(
                      color: Const.bluecolor,
                      borderRadius: BorderRadius.circular(Const.kPadding5.r)),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: Strings.add,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Const.kFont9.r,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Container(
              height: Const.kPadding120.r,
              width: Const.kPadding345.r,
              color: Const.offwhite,
              padding: EdgeInsets.only(
                  top: Const.kPadding10.r, left: Const.kPadding27.r),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text(
                        Strings.vehi,
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
                      Text(
                        Strings.remark,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehitype,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehinum,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.remark,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehitype,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehinum,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.remark,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehitype,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.vehinum,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9,top: 5),
                        child: Container(
                          height: Const.kPadding21.r,
                          width: Const.kPadding78.r,
                          decoration: BoxDecoration(
                              color: Const.lightgrey,
                              borderRadius:
                              BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: Text(
                              Strings.remark,
                              style: TextStyle(
                                  color: Const.subtitle,
                                  fontSize: Const.kFont8.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPadding18.r),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Const.kPaddingM.r, left: Const.kPadding3.r),
                  child: Text(
                    Strings.addmem,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
                SizedBox(width: Const.kPadding227.r),
                Container(
                  alignment: Alignment.center,
                  height: Const.kPaddingM.r,
                  width: Const.kPaddingXXL.r,
                  decoration: BoxDecoration(
                      color: Const.bluecolor,
                      borderRadius: BorderRadius.circular(Const.kPadding5.r)),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: Strings.add,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Const.kFont9.r,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 530.r,
              width: 345.r,
              decoration: BoxDecoration(
                color: Const.offwhite,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Const.kPadding18),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      decoration: const InputDecoration(
                        hintText: Strings.memname,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPadding10),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPadding10),
                  TextField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      hintText: Strings.age,
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      hintText: Strings.contactnum,
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      hintText: Strings.adharno,
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      hintText: Strings.occupation,
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    // textAlignVertical: TextAlignVertical.top,
                    // expands: true,
                    // maxLines: null,
                    decoration: const InputDecoration(
                      hintText: Strings.remark,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: Const.kPaddingXXL),
                      border: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(Const.kPaddingM),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPadding10.r),
                  Center(
                      child: Text(Strings.uploadimg,
                          style: TextStyle(fontSize: Const.kFont11.r))),
                  SizedBox(height: Const.kPadding20.r),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 34.h,
                        width: 34.w,
                        child: SvgPicture.asset('assets/image/camera.svg',
                            height: 33, width: 33),
                      ),
                      Container(
                        height: 34.h,
                        width: 34.w,
                        child: SvgPicture.asset('assets/image/gallery.svg',
                            height: 33, width: 33),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.h),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Const.kPaddingM.r, left: Const.kPadding3.r),
                  child: Text(
                    Strings.myservice,
                    style: TextStyle(fontSize: Const.kFont11.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Container(
              height: 384.r,
              width: 345.r,
              decoration: BoxDecoration(
                color: Const.offwhite,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.r, top: 11.r),
                        child: Text(
                          Strings.myservice,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Const.kPadding5, left: Const.kPadding12),
                    child: TextField(
                      style: TextStyle(fontSize: Const.kFont12.r),
                      decoration: const InputDecoration(
                        hintText: Strings.srvicetype,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPadding10),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 11),
                            child: Text(
                              Strings.dt,
                              style: TextStyle(fontSize: Const.kFont12.r),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 138, top: 11),
                            child: Text(
                              Strings.time,
                              style: TextStyle(fontSize: Const.kFont12.r),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Const.kPadding5.r),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          child: TextField(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            decoration: const InputDecoration(
                              hintText: Strings.dt,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: Const.kPadding5,
                                  horizontal: Const.kPadding5),
                              border: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(Const.kPaddingM),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, top: 5),
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          child: TextField(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            decoration: const InputDecoration(
                              hintText: Strings.time,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: Const.kPadding5,
                                  horizontal: Const.kPadding5),
                              border: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(Const.kPaddingM),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 12),
                        child: Text(
                          Strings.msg,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Const.kPadding5.r),
                  Container(
                    height: 102.h,
                    width: 314.w,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      decoration: const InputDecoration(
                        hintText: Strings.msgs,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPaddingXXL),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 16),
                        child: Container(
                          height: 40.h,
                          width: 150.w,
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
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingM.r)),
                          child: Center(
                            child: Text(
                              Strings.notify,
                              style: TextStyle(
                                  fontSize: Const.kPaddingM.r,
                                  color: Const.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 16),
                        child: Container(
                          height: 40.h,
                          width: 150.w,
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
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingM.r)),
                          child: Center(
                            child: Text(
                              Strings.manager,
                              style: TextStyle(
                                  fontSize: Const.kPaddingM.r,
                                  color: Const.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Const.kPadding18),
            Row(
              children: [
                Text(
                  Strings.userconfigra,
                  style:
                      TextStyle(fontSize: Const.kFont12.r, color: Const.black),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Container(
              height: 570.h,
              width: 345.w,
              color: Const.offwhite,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Const.kPadding16.r,
                          top: Const.kPadding10.r,
                        ),
                        child: Text(
                          Strings.dt,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50.h,
                    width: 314.w,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: Const.kPadding5, left: Const.kPadding12),
                      child: TextField(
                        style: TextStyle(fontSize: Const.kFont12.r),
                        decoration: const InputDecoration(
                          hintText: Strings.dt,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Const.kPadding10),
                          border: const OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(Const.kPaddingM),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Const.kPadding16.r,
                          top: Const.kPadding10.r,
                        ),
                        child: Text(
                          Strings.maintencetype,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50.h,
                    width: 314.w,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: Const.kPadding5, left: Const.kPadding12),
                      child: TextField(
                        style: TextStyle(fontSize: Const.kFont12.r),
                        decoration: const InputDecoration(
                          hintText: Strings.maintancetype,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Const.kPadding10),
                          border: const OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(Const.kPaddingM),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Const.kPadding16.r,
                          top: Const.kPadding10.r,
                        ),
                        child: Text(
                          Strings.month,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50.h,
                    width: 314.w,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: Const.kPadding5, left: Const.kPadding12),
                      child: TextField(
                        style: TextStyle(fontSize: Const.kFont12.r),
                        decoration: const InputDecoration(
                          hintText: Strings.month,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Const.kPadding10),
                          border: const OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(Const.kPaddingM),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Const.kPadding16.r,
                          top: Const.kPadding10.r,
                        ),
                        child: Text(
                          Strings.amount,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50.h,
                    width: 314.w,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: Const.kPadding5, left: Const.kPadding12),
                      child: TextField(
                        style: TextStyle(fontSize: Const.kFont12.r),
                        decoration: const InputDecoration(
                          hintText: Strings.amount,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Const.kPadding10),
                          border: const OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(Const.kPaddingM),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Const.kPadding16.r,
                          top: Const.kPadding10.r,
                        ),
                        child: Text(
                          Strings.paymenttype,
                          style: TextStyle(fontSize: Const.kFont12.r),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 50.h,
                      width: 314.w,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(fontSize: Const.kFont12.r),
                          decoration: const InputDecoration(
                            hintText: Strings.paymenttype,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Const.kPadding10),
                            border: const OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(Const.kPaddingM),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPaddingM.r),
                  Container(
                    height: 102.h,
                    width: 314.w,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      // textAlignVertical: TextAlignVertical.top,
                      // expands: true,
                      // maxLines: null,
                      decoration: const InputDecoration(
                        hintText: Strings.remark,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: Const.kPaddingXXL),
                        border: const OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Const.kPaddingM),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPaddingM.r),
                  Container(
                    height: 50.h,
                    width: 214.w,
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
                        borderRadius:
                            BorderRadius.circular(Const.kPadding20.r)),
                    child: Center(
                      child: Text(
                        Strings.pay,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Const.kFont15.r,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 23.h),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ServiceContact();
                }));
              },
              child: Container(
                height: 50.h,
                width: 284.w,
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
                    Strings.sve,
                    style: TextStyle(
                        color: Const.white,
                        fontSize: Const.kFont15.r,
                        fontWeight: FontWeight.bold),
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
