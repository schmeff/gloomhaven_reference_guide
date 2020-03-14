import 'package:flutter/material.dart';

class RuleTitle extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String titleText;

  RuleTitle(this.titleText, this.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(135, 163, 123, 1),
      title: Text(
        titleText,
        style: TextStyle(
            color: Color.fromRGBO(53, 52, 48, 1),
            fontFamily: 'PirataOne',
            fontSize: 25),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
