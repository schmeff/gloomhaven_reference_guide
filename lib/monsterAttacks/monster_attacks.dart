import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class MonsterAttacks extends StatelessWidget {
  static const routeName = '/monsterAttacks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Attacks", 56),
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
                          text: '\nA monster will attack on its turn if '),
                      TextSpan(
                        text: '"Attack±X"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' is part of its ability card. Any damage dealt is calculated from its base attack value (found on' +
                              ' its monster statistic card) modified by X (either positive or negative). Monsters will always attack their focused enemies but if the monster can attack multiple targets, it will attack its focused enemy and as many other enemies as possible to '),
                      TextSpan(
                        text: 'maximum effect',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: '. If a monster has multiple attacks, it will choose the focus of its other attacks following normal focus rules, excluding figures' +
                              ' it is already attacking. Any attack that does not specify a range on the monster ability card should use the base range of the monster written on' +
                              ' its stat card.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Monster attacks function exactly like character attacks, and are modified by the attacker\'s attack bonuses, then attack modifier' +
                              ' cards, then the defense bonuses of their target.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
