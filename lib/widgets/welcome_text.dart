import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({ super.key,required this.padding });

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      child: Center(
        child: Text(
          "Hallo App Akademie!",
          style: TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2020EE)
          ),
          
          ),
      ),
    );
  }
}