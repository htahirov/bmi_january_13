import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff4c4f5e),
      foregroundColor: Colors.white,
      onPressed: onTap,
      child: FaIcon(icon),
    );
  }
}
