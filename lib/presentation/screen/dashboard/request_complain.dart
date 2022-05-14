import 'package:apartment_management/core/const.dart';
import 'package:apartment_management/presentation/screen/dashboard/manage_flat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/strings.dart';

class RequestComplain extends StatefulWidget {
  const RequestComplain({Key? key}) : super(key: key);

  @override
  State<RequestComplain> createState() => _RequestComplainState();
}

class _RequestComplainState extends State<RequestComplain> {
  bool _pressFloor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Const.kPadding60.r),
              child: Center(
                child: Text(Strings.req,
                    style: TextStyle(
                        color: Const.semiheader,
                        fontSize: Const.kFont22.r,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: Const.kPadding30),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.dt,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Const.kPaddingS.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.dt,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(Const.kPadding20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Const.kPadding10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.to,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPaddingS.r),
            GestureDetector(
              onTap: () {
                setState(() {
                  _pressFloor = !_pressFloor;
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
                              color: _pressFloor
                                  ? Const.bluecolor
                                  : Const.offwhite.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Strings.floorhead,
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
                              color: _pressFloor
                                  ? Const.offwhite.withOpacity(0.4)
                                  : Const.bluecolor,
                              borderRadius:
                                  BorderRadius.circular(Const.kPaddingS.r)),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Strings.apartmenthead,
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
                  padding: EdgeInsets.only(left: Const.kPaddingM.r),
                  child: Text(
                    Strings.type,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding5.r),
            Padding(
              padding: EdgeInsets.all(Const.kPaddingS.r),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: Strings.reqcomplain,
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(Const.kPadding20),
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
                    Strings.msg,
                    style: TextStyle(
                        fontSize: Const.kFont11.r, color: Const.black),
                  ),
                ),
              ],
            ),
            TextField(
              // textAlignVertical: TextAlignVertical.top,
              // expands: true,
              // maxLines: null,
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
            // Container(
            //   height: Const.kPadding100.r,
            //   width: Const.kPadding345.r,
            //   decoration: BoxDecoration(
            //       color: Const.offwhite,
            //       borderRadius: BorderRadius.circular(Const.kPadding10.r)),
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //         left: Const.kPaddingM, top: Const.kPaddingM),
            //     child: Text(
            //       Strings.msgs,
            //       style: TextStyle(fontSize: Const.kFont12.r),
            //     ),
            //   ),
            // ),
            SizedBox(height: Const.kPaddingM.r),
            Center(
                child: Text(Strings.uploadimg,
                    style: TextStyle(fontSize: Const.kFont20))),
            SizedBox(height: Const.kPadding20.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  child: SvgPicture.asset(
                    'assets/image/camera.svg',
                    height: 33,
                    width: 33,
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  child: SvgPicture.asset(
                    'assets/image/gallery.svg',
                    height: 33,
                    width: 33,
                  ),
                ),
              ],
            ),
            SizedBox(height: Const.kPadding137.r),
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
                          text: Strings.sed,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Const.kFont15.r,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ManageFlat();
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
