import 'package:akademie01/widgets/simple_square.dart';
import 'package:flutter/material.dart';

class SquareRow extends StatelessWidget {
  const SquareRow({ super.key, required this.padding, required this.borderRadius });

  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  Widget getSquareChild(String text) {
    return Center(
      child: FilledButton(
        onPressed: (){}, 
        child: Text(text)
        )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SimpleSquare(size: 128, color: const Color(0xFFEE0000), padding: padding, borderRadius: borderRadius, child: getSquareChild("A")),
        SimpleSquare(size: 128, color: const Color(0xFF00EE00), padding: padding, borderRadius: borderRadius, child: getSquareChild("B")),
        SimpleSquare(size: 128, color: const Color(0xFF0000EE), padding: padding, borderRadius: borderRadius, child: getSquareChild("C")),
      ],
    );
  }
}