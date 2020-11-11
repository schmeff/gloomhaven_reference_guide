import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';
import '../../commonWidgets/reference_letter_image.dart';

class MonsterFocus extends StatelessWidget {
  static const routeName = '/monsterFocus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Focus", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text:
                              '\nBefore performing any action on their ability card, each individual monster will focus on a specific enemy--either a character or character summon.\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 6),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            TextSpan(
                                text: 'A monster will focus on the enemy figure it can perform its current attack against using the least amount of movement. It finds the ' +
                                    'shortest possible path to get in range and line-of-sight to use its attack, and the figure that can be attacked at the end of that path is the focus.' +
                                    ' This enemy figure is considered the "closest". It doesn\'t matter if the monster can\'t get within range to attack with its current movement, as long' +
                                    ' as there is a path to eventually get within range.\n\nIf a monster does not have an attack listed on its ability card for the round, it finds a focus' +
                                    ' as if it had a melee attack. In the case where the monster can move the same number of spaces to get within range (and line-of-sight) of multiple ' +
                                    'enemy figures (e.g., because it starts its turn within range of multiple enemies), proximity from the monster\'s current position (i.e. number' +
                                    ' of hexes they are away, not counting through walls) is then checked as a tie-breaker for determining "closest".\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 6),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            TextSpan(
                                text: 'If more than one enemy ties for' +
                                    ' being the closest, the second priority is to focus on the enemy who is '),
                            TextSpan(
                              text: 'earlier in the initiative order',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' (summons are focused on before the character' +
                                    ' who summoned them in this regard, even on the round they are summoned, and a character who is performing a long rest would be focused on last).\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/monster_focus_diagram.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 5, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Example:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: ' Even though the Brute ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text: ' is physically closer to Monster  ',
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
                        text:
                            ', the monster is performing a melee attackand can get in range of the Tinkerer in fewer steps (2 instead of 4), so the monster focuses on the Tinkerer  ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('b'),
                      ),
                      TextSpan(
                        text: '.\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: 'In the case where there are no valid targets on which to focus, because ' +
                              'there are no valid hexes a monster can attack from (i.e., they are all blocked, occupied, or there is no open path to reach them), regardless' +
                              ' of the number of hexes it could move, a monster will not move or attack on its turn, but it will perform any of the other actions on its ability' +
                              ' card that it is able.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
