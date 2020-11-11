import 'package:flutter/material.dart';

class ScenarioStatusIcon extends StatelessWidget {
  final bool _available;
  final bool _completed;

  ScenarioStatusIcon(this._available, this._completed);

  @override
  Widget build(BuildContext context) {
    if (this._completed) {
      return Icon(
        Icons.check_box,
        color: Theme.of(context).primaryColor,
        size: 30,
      );
    }
    if (this._available) {
      return Icon(
        Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
        size: 30,
      );
    }
    return Icon(
      Icons.lock,
      color: Colors.blueGrey,
      size: 30,
    );
  }
}
