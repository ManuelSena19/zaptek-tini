import 'package:flutter/material.dart';

double verticalConverter(double value, BuildContext context){
  double height = MediaQuery.of(context).size.height;
  double heightRatio = height / 828;
  double newValue = heightRatio * value;
  return newValue;
}

double horizontalConverter(double value, BuildContext context){
  double width = MediaQuery.of(context).size.width;
  double widthRatio = width / 360;
  double newValue = widthRatio * value;
  return newValue;
}
