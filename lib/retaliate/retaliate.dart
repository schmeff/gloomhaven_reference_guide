import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Retaliate extends StatelessWidget {
  static const routeName = '/retaliate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Retaliate", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/retaliate_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'A "Retaliate X" bonus ability causes the recipient to inflict X points of damage on figures who attack it from an adjacent hex for each attack made. ' +
                              'A retaliate bonus can also be accompanied by a "Range Y" value, which means that the retaliate damage is applied to any attacker within Y hexes. A ' +
                              'retaliate takes effect after the attack that initiated it. If the retaliating figure is killed or exhausted by the attack, then the retaliate does ' +
                              'not activate. Multiple retaliate bonuses stack with one another, and retaliate itself is not an attack or even a targeted effect.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
