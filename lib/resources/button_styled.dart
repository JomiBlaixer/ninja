import 'package:flutter/material.dart';
import 'package:ninja1/mytheme.dart';

class ButtonStyled extends StatelessWidget {
  const ButtonStyled({super.key, required this.onPressed, required this.child});

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  AppColor.primaryAccent,
                  AppColor.primaryColor,
                  AppColor.primaryAccent
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: child,
          )),
    );
  }
}
