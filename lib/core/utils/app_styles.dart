import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle textRegular14(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }

  static TextStyle textRegular18(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
      color: const Color(0xffD9D9D9),
    );
  }

  static TextStyle textRegular9(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      fontWeight: FontWeight.w400,
      color: const Color(0xff9A9A9A),
    );
  }

  static TextStyle textRegular12(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xff9A9A9A),
    );
  }

  static TextStyle textRegular16(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }

  static TextStyle textBold11(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold16(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold18(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold12(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold14(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold9(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle textSemiBold24(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: Colors.white,
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
  if (width < 600) {
    return width / 500;
  } else if (width < 1250) {
    return width / 950;
  } else {
    return width / 1920;
  }
}
