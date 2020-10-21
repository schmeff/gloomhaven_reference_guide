import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';
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
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: '\nMonster base statistics, trap damage',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ', the '),
                      TextSpan(
                        text: 'amount of gold received from money tokens',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ', and the '),
                      TextSpan(
                        text:
                            'amount of bonus experience for completing a scenario',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' are all dependent on the level of the ' +
                              'scenario being played. The '),
                      TextSpan(
                        text: 'scenario level',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' is chosen by the players before the scenario begins' +
                              ' and is based on the average level of the party and how difficult the players want the scenario ' +
                              'to be.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'A scenario\'s level can be set to any number from 0 to 7, but cannot be changed once the ' +
                                  'scenario begins. The '),
                      TextSpan(
                        text: 'recommended',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' scenario level is equal to the average level of the characters' +
                              ' in the party, divided by 2 and rounded up; this would be considered "Normal" difficulty. If players' +
                              ' desire an "Easy" experience, they can reduce the recommended scenario level by 1. If a more ' +
                              'difficult experience is desired, the scenario level can be raised by 1 for "Hard" or 2 for "Very Hard".'),
                    ],
                  ),
                ),
                LevelModificationTable(),
                ScenarioLevelTable(),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: '\nExample:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: ' If a party contains a Level 6 character, two Level 4 characters, and a Level 3 character, the average would be 4.25; ' +
                            'divided by 2 and rounded up is 3, so a normal scenario difficulty level would be 3. The choice of scenario level is ' +
                            'completely up to the players. Higher scenario levels will result in more difficult monsters, but will also yield ' +
                            'more gold and experience.\n',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
