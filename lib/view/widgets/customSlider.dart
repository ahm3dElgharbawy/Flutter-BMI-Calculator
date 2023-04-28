import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final int height;
  final void Function(double) onChanged ;
  const CustomSlider({super.key,required this.height,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: height.toDouble(),
      max: 300,
      activeColor: Colors.grey,
      thumbColor: primaryColor,
      onChanged: onChanged
    );
  }
}
