import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_box.dart';
import 'title_text.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({
    super.key,
    required this.title,
    required this.icon,
    required this.onSelect,
    required this.borderColor,
  });

  final String title;
  final IconData icon;
  final void Function() onSelect;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onSelect,
        child: CardBox(
          borderColor: borderColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 16),
              TitleText(text: title),
            ],
          ),
        ),
      ),
    );
  }
}
