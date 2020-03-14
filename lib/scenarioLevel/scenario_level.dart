import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';
import './level_modification_table.dart';
import './scenario_level_table.dart';

class ScenarioLevel extends StatelessWidget {
  static const routeName = '/scenarioLevel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Scenario Level", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RuleText('Monster base statistics, trap damage, the amount of gold received from money tokens, and the ' +
                    'amount of bonus experience for completing a scenario are all dependent on the level of the ' +
                    'scenario being played. The scenario level is chosen by the players before the scenario begins' +
                    ' and is based on the average level of the party and how difficult the players want the scenario ' +
                    'to be.'),
                RuleText('\nA scenario\'s level can be set to any number from 0 to 7, but cannot be changed once the ' +
                    'scenario begins. The recommended scenario level is equal to the average level of the characters' +
                    ' in the party, divided by 2 and rounded up; this would be considered "Normal" difficulty. If players' +
                    ' desire an "Easy" experience, they can reduce the recommended scenario level by 1. If a more ' +
                    'difficult experience is desired, the scenario level can be raised by 1 for "Hard" or 2 for "Very Hard".'),
                LevelModificationTable(),
                ScenarioLevelTable(),
                RuleText('\nExample: ' +
                    'If a party contains a Level 6 character, two Level 4 characters, and a Level 3 character, the average would be 4.25; ' +
                    'divided by 2 and rounded up is 3, so a normal scenario difficulty level would be 3. The choice of scenario level is ' +
                    'completely up to the players. Higher scenario levels will result in more difficult monsters, but will also yield ' +
                    'more gold and experience.')
              ],
            ),
          )),
    );
  }
}
