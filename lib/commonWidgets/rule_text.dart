import 'package:flutter/material.dart';

class RuleText extends StatelessWidget {
  final text;

  RuleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}
