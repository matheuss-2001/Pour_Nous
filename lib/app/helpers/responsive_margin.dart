import 'package:flutter/material.dart';

EdgeInsets responsiveMargin(Size size) {
  return EdgeInsets.symmetric(
      horizontal: size.width <= 700
          ? 0
          : size.width <= 1000
          ? size.width * 0.1
          : size.width <= 1440
          ? size.width * 0.22
          : size.width * 0.28);
}