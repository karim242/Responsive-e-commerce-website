import 'package:flutter/material.dart';

abstract class AppStyles {
  // Roboto fonts
  static TextStyle styleSemBoldRobp24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }
   static TextStyle styleSemBoldRobp14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }
    static TextStyle styleMediumRobp12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMediumRobp14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF00E0C6),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    );
  }


//Poppins fonts
  static TextStyle styleMediumPo12(BuildContext context) {
    return TextStyle(
      color: const Color(0xff000000),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMediumPo14(BuildContext context) {
    return TextStyle(
      color: const Color(0xff5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
     static TextStyle styleMediumPo15(BuildContext context) {
    return TextStyle(
      color: const Color(0xff016170),
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
   static TextStyle styleMediumPo16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff009393),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMediumPo18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5C5A5A),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMediumPo20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMediumPo26(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

    static TextStyle styleSemiBoldPo12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBoldPo14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleSemiBoldPo26(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }
   
static TextStyle styleRegularPo12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }
static TextStyle styleRegularPo14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRegularPo16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

//OpenSans fonts
static TextStyle styleRegularOpen16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBoldOpen14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w600,
    );
  }
 //PublicSans 
  static TextStyle styleBoldPublic25(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontFamily: 'PublicSans',
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 700;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}