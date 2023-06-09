import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final IconData icon;
  final onPressed;
  const CustomIconBtn({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 50,
        color: primaryColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      
    );
  }
}
