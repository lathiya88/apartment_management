import 'dart:ui';
import 'package:apartment_management/presentation/screen/dashboard/flat_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const.dart';
import 'package:apartment_management/core/const.dart';
import '../../../core/strings.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    var editingController;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            barrierColor: Colors.black87,
            context: context,
            builder: (BuildContext context) {
              return Material(
                color: Colors.transparent,
                child: Center(
                  child: Container(
                    color: Colors.white,
                    height: Const.kPadding391.r,
                    width: Const.kPadding284.r,
                    child: Column(
                      children: [
                        SizedBox(height: Const.kPadding20.r),
                        const Text(
                          Strings.conforma,
                          style: TextStyle(
                            fontSize: 20,
                            color: Const.bluecolor,fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: Const.kPadding20.r,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Const.kPaddingM.r),
                              child: Text(
                                Strings.selectfloor,
                                style: TextStyle(fontSize: Const.kFont11.r,color: Const.subtitle),
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.all(Const.kPaddingS.r),
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: Strings.selectfloor,
                              border: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(Const.kPadding20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Const.kPaddingS.r),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Const.kPaddingM.r),
                              child: Text(
                                Strings.selecttower,
                                style: TextStyle(fontSize: Const.kFont11.r,color: Const.subtitle),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(Const.kPaddingS.r),
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: Strings.selecttower,
                              border: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(Const.kPadding20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Const.kPaddingS.r),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Const.kPaddingM.r),
                              child: Text(
                                Strings.selectfltnor,
                                style: TextStyle(fontSize: Const.kFont11.r,color: Const.subtitle),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(Const.kPaddingS.r),
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: Strings.selectfltnor,
                              border: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(Const.kPadding20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Const.kPadding10.r),
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
                                      text: Strings.conform,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Const.kFont15.r,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                    return Flat_Info();
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
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: Const.kPadding30,
              left: Const.kPaddingM,
              right: Const.kPaddingM),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Theme(
                    data: ThemeData(),
                    child: ShaderMask(
                      child: CupertinoSwitch(
                        activeColor: Const.red,
                        value: value,
                        onChanged: (v) => setState(() => value = v),
                      ),
                      shaderCallback: (r) {
                        return LinearGradient(
                          colors:
                              value ? [Const.black] : [Colors.red, Colors.red],
                        ).createShader(r);
                      },
                    ),
                  ),
                  Text(
                    "Lock",
                    style: TextStyle(
                        fontSize: Const.kFont12.r,
                        color: Const.black,
                        fontWeight: FontWeight.bold),
                  ),
                  // Icon(Icons.add_alert_sharp),
                ],
              ),
              SizedBox(height: Const.kPaddingXL.r),
              Padding(
                padding: const EdgeInsets.only(
                    left: Const.kPaddingM, right: Const.kPaddingM),
                child: TextField(
                  onChanged: (value) {},
                  controller: editingController,
                  decoration: InputDecoration(
                      hintText: Strings.search,
                      prefixIcon: Icon(Icons.search, color: Const.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Const.kPadding20.r)))),
                ),
              ),
              SizedBox(height: Const.kPadding40.r),
              GridView.count(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(Const.kPaddingM),
                  crossAxisSpacing: Const.kPaddingL.r,
                  mainAxisSpacing: Const.kPaddingL.r,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      height: Const.kPadding98,
                      width: Const.kPadding98,
                      decoration: BoxDecoration(
                        color: Const.white,
                        borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: Const.kPadding20.r),
                          Icon(Icons.apartment_sharp,
                              color: Const.bluecolor, size: Const.kPaddingL),
                          SizedBox(height: Const.kPadding10.r),
                          Center(
                            child: Text(
                              Strings.flatinfo,
                              style: TextStyle(
                                  fontSize: Const.kFont12.r,
                                  color: Const.darkgrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: Const.kPadding98,
                      width: Const.kPadding98,
                      decoration: BoxDecoration(
                        color: Const.white,
                        borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: Const.kPadding20.r),
                          Icon(Icons.work,
                              color: Const.bluecolor, size: Const.kPaddingL),
                          SizedBox(height: Const.kPadding10.r),
                          Center(
                            child: Text(
                              Strings.balsheet,
                              style: TextStyle(
                                  fontSize: Const.kFont12,
                                  color: Const.darkgrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: Const.kPadding98,
                      width: Const.kPadding98,
                      decoration: BoxDecoration(
                        color: Const.white,
                        borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: Const.kPadding20.r),
                          Icon(Icons.people,
                              color: Const.bluecolor, size: Const.kPaddingL),
                          SizedBox(height: Const.kPadding10.r),
                          Center(
                            child: Text(
                              Strings.reqcom,
                              style: TextStyle(
                                  fontSize: Const.kFont12,
                                  color: Const.darkgrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: Const.kPadding98,
                      width: Const.kPadding98,
                      decoration: BoxDecoration(
                        color: Const.white,
                        borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: Const.kPadding20.r),
                          Icon(Icons.water_damage_sharp,
                              color: Const.bluecolor, size: Const.kPaddingL),
                          SizedBox(height: Const.kPadding10.r),
                          Center(
                            child: Text(
                              Strings.manageflat,
                              style: TextStyle(
                                  fontSize: Const.kFont12,
                                  color: Const.darkgrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: Const.kPadding98,
                      width: Const.kPadding98,
                      decoration: BoxDecoration(
                        color: Const.white,
                        borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                      ),
                      child: ListView(
                        children: [
                          SizedBox(height: Const.kPadding20.r),
                          Icon(Icons.apartment_sharp,
                              color: Const.bluecolor, size: Const.kPaddingL),
                          SizedBox(height: Const.kPadding10.r),
                          Center(
                            child: Text(
                              Strings.sercontact,
                              style: TextStyle(
                                  fontSize: Const.kFont12,
                                  color: Const.darkgrey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
              SizedBox(height: Const.kPadding30.r),
              Padding(
                padding: EdgeInsets.only(left: Const.kPaddingM),
                child: Text(Strings.notice,
                    style: TextStyle(
                        color: Const.semiheader, fontSize: Const.kFont20.r)),
              ),
              SizedBox(height: Const.kPaddingM.r),
              Column(
                // children: [
                //   Row(
                children: [
                  Container(
                    height: 123.h,
                    width: 345.w,
                    decoration: BoxDecoration(
                      color: Const.white,
                      borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Const.kPaddingM, top: Const.kPadding10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.album,
                                color: Const.yellow,
                              ),
                              Text(
                                Strings.meeting,
                                style: TextStyle(
                                    color: Const.black,
                                    fontSize: Const.kFont14.r,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: Const.kPadding10.r),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPaddingS),
                            child: Text(
                              Strings.meetingpara,
                              style: TextStyle(
                                  fontSize: Const.kFont12.r,
                                  color: Const.darkgrey),
                            ),
                          ),
                          SizedBox(
                            height: Const.kPadding10.r,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPadding227),
                            child: Text(
                              Strings.date,
                              style: TextStyle(
                                  fontSize: Const.kFont11.r,
                                  color: Const.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPaddingM.r),
                  Container(
                    height: 123.h,
                    width: 345.w,
                    decoration: BoxDecoration(
                      color: Const.white,
                      borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Const.kPaddingM, top: Const.kPadding10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.album,
                                color: Const.red,
                              ),
                              Text(
                                Strings.warning,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Const.black,
                                    fontSize: Const.kFont14.r,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: Const.kPadding10.r),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPaddingS),
                            child: Text(
                              Strings.meetingpara,
                              style: TextStyle(
                                  fontSize: Const.kFont12.r,
                                  color: Const.darkgrey),
                            ),
                          ),
                          SizedBox(
                            height: Const.kPadding10.r,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPadding227),
                            child: Text(
                              Strings.date,
                              style: TextStyle(
                                  fontSize: Const.kFont11.r,
                                  color: Const.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPaddingM.r),
                  Container(
                    height: 123.h,
                    width: 345.w,
                    decoration: BoxDecoration(
                      color: Const.white,
                      borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Const.kPaddingM, top: Const.kPadding10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.album, color: Const.green),
                              Text(
                                Strings.Complain,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Const.black,
                                    fontSize: Const.kFont14.r,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: Const.kPadding10.r),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPaddingS),
                            child: Text(
                              Strings.meetingpara,
                              style: TextStyle(
                                  fontSize: Const.kFont12.r,
                                  color: Const.darkgrey),
                            ),
                          ),
                          SizedBox(
                            height: Const.kPadding10.r,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPadding227),
                            child: Text(
                              Strings.date,
                              style: TextStyle(
                                  fontSize: Const.kFont11.r,
                                  color: Const.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Const.kPaddingM.r),
                  Container(
                    height: 123.h,
                    width: 345.w,
                    decoration: BoxDecoration(
                      color: Const.white,
                      borderRadius: BorderRadius.circular(Const.kPaddingM.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Const.kPaddingM, top: Const.kPadding10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.album, color: Const.bluecolor),
                              Text(
                                Strings.request,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Const.black,
                                    fontSize: Const.kFont14.r,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: Const.kPadding10.r),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPaddingS),
                            child: Text(
                              Strings.meetingpara,
                              style: TextStyle(
                                  fontSize: Const.kFont12.r,
                                  color: Const.darkgrey),
                            ),
                          ),
                          SizedBox(
                            height: Const.kPadding10.r,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Const.kPadding227),
                            child: Text(
                              Strings.date,
                              style: TextStyle(
                                  fontSize: Const.kFont11.r,
                                  color: Const.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
