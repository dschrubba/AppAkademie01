import 'package:flutter/material.dart';

class SimpleSquare extends StatelessWidget {
  const SimpleSquare({ super.key, required this.size, required this.color, required this.padding, required this.borderRadius, this.child });

  final double size;
  final Color color;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: size,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: color,
        ),
        child: child
      ),
    );
  }
}