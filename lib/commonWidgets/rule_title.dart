import 'package:flutter/material.dart';

class RuleTitle extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String titleText;

  RuleTitle(this.titleText, this.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
