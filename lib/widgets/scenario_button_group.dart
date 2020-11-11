import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scenarios.dart';

class ScenarioButtonGroup extends StatelessWidget {
  final Function _completeScenario;
  final bool _available;
  final bool _completed;

  ScenarioButtonGroup(
    this._completeScenario,
    this._available,
    this._completed,
  );

  @override
  Widget build(BuildContext context) {
    if (this._available) {
      return ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          RaisedButton(
            onPressed: () => this._completeScenario(),
            child: Text("Mark Complete"),
            color: Theme.of(context).primaryColor,
          ),
        ],
      );
    }
    if (this._completed) {
      return ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text("Mark Incomplete"),
            color: Theme.of(context).primaryColor,
          ),
        ],
      );
    }
    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text("Unlock"),
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
