import 'package:flutter/material.dart';

class IconGrid extends StatelessWidget {
  const IconGrid({ super.key, required this.padding, required this.borderRadius });

  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  static const Center iconWidget = Center(
    child: Icon(
      size: 72,
      Icons.face,
      color: Color(0xFF212121),
      )
    );

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        iconWidget,
        iconWidget,
        iconWidget,
        iconWidget,
      ],
      );
  }
}