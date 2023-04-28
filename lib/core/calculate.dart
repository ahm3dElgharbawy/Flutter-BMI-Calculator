import 'dart:math';

import 'package:flutter/material.dart';

class Calculate {
  final int height;
  final int weight;
  double result = 0;
  Calculate({required this.height, required this.weight});

  String calculateBMI() {
    double heightInMeters = (height / 100); //convert height from centimeter to meter
    result = weight / pow(heightInMeters, 2);
    return result.toStringAsFixed(1) + " kg/m";
  }

  String getStatus() {
    if (result < 18.5) {
      return "Under Weight";
    } else if (result >= 18.5 && result < 25) {
      return "Normal";
    } else if (result >= 25 && result < 30) {
      return "Over Weight";
    } else {
      return "Obesity";
    }
  }

  String getAdvise(){
    if(result>=30){
      return "You are heavily overweight. Your health may be at risk if you do not lose weight.Talk to your doctor for advice ";
    } else if (result >= 25) {
      return 'You have a more than normal body weight. Try to do more Exercise';
    } else if (result > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more';
    }
  }
  Color getTextColor(){
    if(result>=30){
      return Color(0xffFFD300);
    }else if(result>=25){
      return Color(0xffFFFC01);
    }else{
      return Color(0xffA1D662);
    }
  }

}
