import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class MonsterMovement extends StatelessWidget {
  static const routeName = '/monsterMovement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Movement", 56),
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
                          text: 'A monster can move on its turn if "Move±X" is part of its ability card. It can move up to a number of hexes equal to its base move value ' +
                              '(found on its monster statistic card) modified by X (either positive or negative). If a monster has a move but no attack afterward as' +
                              ' part of its ability card, it will use its movement to get as close as possible to its focused target (determined as if it had a melee attack), ' +
                              'moving along the shortest possible path to enter a hex adjacent to its focused enemy.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If a monster has an attack ability after its movement,' +
                              ' it will move the least number of hexes possible in such a way as to attack its focused enemy with maximum effect. If it is a single-target' +
                              ' melee attack, it will simply move toward the nearest hex adjacent to its focus to attack. If it is a multi-target attack, it will move toward ' +
                              'a position where its attack will hit its focused enemy and as many other enemies as possible.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If the monster is performing a ranged attack,' +
                              ' it will only move toward a hex where it is within range to perform its best possible attack. A monster will also move away from its focused ' +
                              'enemy until it can perform the ranged attack without Disadvantage. When forced to choose, a monster will prioritize losing Disadvantage on its' +
                              ' focused enemy over maximizing its attack on secondary targets. Even if a monster cannot move into attack range, it will still use its movement' +
                              ' to get as close as possible to its focus.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Having abilities other than "Attack" on its ability card does not affect a monster\'s movement ' +
                              'in any way. It will simply move according to the above rules and then use its other abilities as best as it can.\n'),
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/monster_movement_diagram.png'),
                  ),
                  margin:
                      EdgeInsets.only(bottom: 5, top: 15, left: 30, right: 30),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Example:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: ' Monster ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/1_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' can perform a "Move 3" ability. It focuses on the Brute ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text:
                            ', since he is the closest enemy. If the monster had a ranged attack, it would remain in its current hex and attack the Brute. If it had a single-target melee attack' +
                            ', it would move 1 hex ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/green_b_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' to be adjacent to the Brute and attack. If it could attack two targets with a melee attack, it would move 2 hexes ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/green_c_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' to be adjacent to both the Brute and the Tinkerer. If it could melee attack three or more targets, it would move 3 hexes  ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/green_d_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' to be adjacent to be adjacent to all three characters.\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
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
