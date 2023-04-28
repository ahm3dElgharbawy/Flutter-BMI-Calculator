import 'package:flutter/material.dart';

class CustomExpanded extends StatelessWidget {
  final Widget child;
  const CustomExpanded({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
