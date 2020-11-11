import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class OtherMonsterAbilities extends StatelessWidget {
  static const routeName = '/otherMonsterAbilities';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Other Monster Abilities", 56),
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
                        text: '\nHealing: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Monster healing functions exactly like character healing as discussed on p. 26. With a "Heal X" ability, the monster will heal themselves ' +
                            'or an ally within the specified range, whichever has lost the most hit points.\n',
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Summons: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Monster summon abilities place new monsters on the board ' +
                            'that behave exactly like the normal monsters, acting according to played monster ability cards of their type. Summoned monsters are placed in an empty' +
                            ' hex adjacent to the summoning monster and also as close to an enemy as possible. If there are no empty adjacent hexes or there are no available standees ' +
                            'of the summoned monster type, the summon fails. Summoned monsters never act on the round they are summoned, nor do they drop money tokens ' +
                            'when killed.\n',
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Bonus abilities: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Ability card bonuses are activated through actions ',
                      ),
                      TextSpan(
                        text: 'only when the monster activates',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' and are only active until the end of the round in which the card was drawn.\n',
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Looting: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Monsters do ',
                      ),
                      TextSpan(
                        text: 'not',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' perform end-of-turn looting, but some monsters do have loot actions. ' +
                            'In these cases, a monster will pick up all money tokens within the specified range. These money tokens are lost and are not dropped again when ' +
                            'the looting monster is killed. Monsters are unable to loot treasure tiles.\n',
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
