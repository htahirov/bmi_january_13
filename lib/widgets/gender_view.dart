import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_box.dart';

class GenderView extends StatefulWidget {
  const GenderView({super.key});

  @override
  State<GenderView> createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  late Color maleBorderColor = Colors.transparent;
  late Color femaleBorderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(
          title: 'MALE',
          icon: FontAwesomeIcons.mars,
          borderColor: maleBorderColor,
          onSelect: () {
            maleBorderColor = Colors.pink;
            femaleBorderColor = Colors.transparent;
            setState(() {});
          },
        ),
        const SizedBox(width: 12),
        GenderBox(
          title: 'FEMALE',
          icon: FontAwesomeIcons.venus,
          borderColor: femaleBorderColor,
          onSelect: () {
            maleBorderColor = Colors.transparent;
            femaleBorderColor = Colors.pink;
            setState(() {});
          },
        ),
      ],
    );
  }
}
