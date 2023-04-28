import 'package:flutter/material.dart';

const Color boxColor = Color(0xff171D2D);
const Color primaryColor = Colors.blue;
const Color backgroundColor = Color(0xff0A0E21);
const Color bottomSheetColor = Color(0xff1C1D2E);

ThemeData appTheme = ThemeData(
  fontFamily: "Nunito",
  primarySwatch: Colors.blue,
  textTheme: TextTheme().copyWith(),
);

const BoxDecoration customBottomSheetDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
  color: bottomSheetColor,
);


