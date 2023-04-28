import 'package:flutter/material.dart';

const Color boxColor = Color(0xff171D2D);
const Color primaryColor = Color(0xff03a9f4);
const Color backgroundColor = Color(0xff0A0E21);
const Color bottomSheetColor = Color(0xff1C1D2E);
const Color calculateButtonColor = Color(0xff3f51b5);

ThemeData appTheme = ThemeData(
  fontFamily: "Nunito",

);

const BoxDecoration customBottomSheetDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
  color: bottomSheetColor,
);


