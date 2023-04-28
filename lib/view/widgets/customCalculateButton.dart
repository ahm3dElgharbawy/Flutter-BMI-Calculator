import 'dart:math';

import 'package:bmicalculator/constants/constants.dart';
import 'package:bmicalculator/core/calculate.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final int height;
  final int weight;
  const CalculateButton(
      {super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    Calculate calculator = Calculate(height: height, weight: weight);
    String bmi = calculator.calculateBMI();
    return MaterialButton(
      child: customText(text: "Calculate", size: 16),
      minWidth: double.infinity,
      color: calculateButtonColor,
      onPressed: () {
        showModalBottomSheet<void>(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: customBottomSheetDecoration,
              height: 300,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customText(
                      text: calculator.getStatus(),
                      color: calculator.getTextColor(),
                      size: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(text: bmi, size: 40),
                        customText(text: "2", size: 20),
                      ],
                    ),
                    customText(text: calculator.getAdvise(), size: 16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

Text customText({String? text, double? size, Color? color}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: size,
      color: color ?? Colors.white,
    ),
    textAlign: TextAlign.center,
  );
}
