import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get widthQuery => MediaQuery.of(this).size.width;
  double get heightQuery => MediaQuery.of(this).size.height;
}

const double spacingLarge = 24;
const double spacingNormal = 12;
const double spacingMicro = 4;

const double paddingSmall = 8;
const double paddingNormal = 16;
const double paddingLarge = 24;

const double borderRadiusNormal = 12;
