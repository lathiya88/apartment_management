import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Const{
  /// Colors
  static const Color bluecolor= Color(0xff486EBF);
  static const Color black= Color(0xff383838);

  /// Fonts
  static const Color header= Color(0xff000000);
  static const Color semiheader= Color(0xff383838);
  static const Color subtitle= Color(0xff929292);
  static const Color grey= Color(0xff707070);
  static const Color white= Color(0xffFFFFFF);
  static const Color offwhite= Color(0xffEFEFEF);
  static const Color red= Color(0xffE25050);
  static const Color green= Color(0xff8FC742);
  static const Color darkgrey= Color(0xff696969);
  static const Color yellow= Color(0xffEFC100);
  static const Color lightgrey= Color(0xffF8F8F8);

  /// Padding
  static const double kPaddingS = 8.0;
  static const double kPadding3 = 3.0;
  static const double kPadding5 = 5.0;
  static const double kPaddingM = 15.0;
  static const double kPaddingL = 25.0;
  static const double kPaddingXL = 32.0;
  static const double kPadding30 = 30.0;
  static const double kPadding40 = 40.0;
  static const double kPadding44 = 44.0;
  static const double kPaddingXXL = 50.0;
  static const double kPadding10 = 10.0;
  static const double kPadding20= 20.0;
  static const double kPadding70= 70.0;
  static const double kPadding60= 60.0;
  static const double kPadding66= 66.0;
  static const double kPadding87= 87.0;
  static const double kPadding98= 98.0;
  static const double kPadding100= 100.0;
  static const double kPadding107= 107.0;
  static const double kPadding120= 120.0;
  static const double kPadding170= 170.0;
  static const double kPadding200= 200.0;
  static const double kPadding148= 148.0;
  static const double kPadding137= 137.0;
  static const double kPadding284= 284.0;
  static const double kPadding227= 227.0;
  static const double kPadding314= 314.0;
  static const double kPadding208= 208.0;
  static const double kPadding381= 381.0;
  static const double kPadding391= 420.0;
  static const double kPadding345= 345.0;
  static const double kPadding293= 293.0;


  /// Spacing
  static double kSpaceS = 8.w.h;
  static double kSpace10 = 10.w.h;
  static double kSpace14H = 14.h;
  static double kSpace20H = 20.h;
  static double kSpace40H = 40.h;
  static double kSpace30H = 30.h;
  static double kSpace20W = 20.w;
  static double kSpace87W = 87.w;
  static double kSpace30W = 30.w;
  static double kSpaceM = 20.w.h;
  static double kSpace50 = 50.h;
  static double kSpace150 = 150.w.h;
  static double kSpace284 = 284.w;


  ///fonts
  static double kFont37 = 37.sp;
  static double kFont22 = 22.sp;
  static double kFont20 = 20.sp;
  static double kFont18 = 18.sp;
  static double kFont15 = 15.sp;
  static double kFont14 = 14.sp;
  static double kFont12 = 12.sp;
  static double kFont11 = 11.sp;
  static double kFont9= 9.sp;


  /// Large
  static TextStyle large = TextStyle(
    color: Const.white,
    fontFamily: 'Avenir',
    fontWeight: FontWeight.bold,
    fontSize: Const.kFont37,
  );

  /// Medium
  static TextStyle bold = TextStyle(
      color: Const.white,
      fontWeight: FontWeight.w700,
      fontSize: Const.kFont9,
      fontFamily: 'Avenir');

  /// Small
  static TextStyle medium = TextStyle(
    color: Const.white,
    fontSize:Const.kFont9,
    fontFamily: 'Avenir',
    fontWeight: FontWeight.w400,
  );

  void showError(String error, context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(error),
      backgroundColor: Theme.of(context).errorColor,
    ));
  }

  void showMessage(String message, context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(context).indicatorColor,
    ));
  }

}