
import 'package:flutter/material.dart';



abstract class OneColors {
  static const Color primaryDark = Color(0xFFD90D7D);
  static const Color primaryLight = Color(0xFFF0BCD9);
}

abstract class OneStyles {
  static const pageTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: OneColors.primaryDark,
  );
  static const subtitle = TextStyle(fontSize: 24, fontWeight: FontWeight.w300);
  static const cardinfo = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static const body = TextStyle(fontSize: 16);
  static const description = TextStyle(fontSize: 11);

  static const fontFamilyPoppins = 'Poppins';
  static const titleStyle = TextStyle(
    color: OneColors.primaryDark,
    fontFamily: OneStyles.fontFamilyPoppins,
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );
  static const subtitleStyle = TextStyle(
    fontFamily: OneStyles.fontFamilyPoppins,
    fontSize: 16.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static const buttonStyle = TextStyle(
    fontFamily: OneStyles.fontFamilyPoppins,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
}

abstract class OneSepators {
  static const verySmall = SizedBox(height: 4, width: 4);
  static const small = SizedBox(height: 8, width: 8);
  static const medium = SizedBox(height: 16, width: 16);
  static const big = SizedBox(height: 32, width: 32);
}


