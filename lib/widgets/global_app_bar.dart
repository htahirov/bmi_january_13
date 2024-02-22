import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      backgroundColor: const Color(0xff0a0e21),
      foregroundColor: const Color(0xffffffff),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
