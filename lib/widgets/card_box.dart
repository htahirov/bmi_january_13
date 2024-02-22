import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    required this.child,
    this.borderColor = Colors.transparent,
  });

  final Widget child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: const Color(0xff1d1e33),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: child,
    );
  }
}
