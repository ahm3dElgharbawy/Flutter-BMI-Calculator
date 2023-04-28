import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color? color ;
  const CustomContainer({super.key, required this.child,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color??boxColor,
        ),
        child: child);
  }
}
