import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/material.dart';

import 'view/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Home(),
    );
  }
}
