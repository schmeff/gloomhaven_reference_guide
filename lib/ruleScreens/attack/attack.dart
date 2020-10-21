import 'package:flutter/material.dart';

import '../../commonWidgets/rule_text.dart';
import '../../commonWidgets/rule_title.dart';

class Attack extends StatelessWidget {
  static const routeName = '/attack';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Attack", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/attack_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: 'An '),
                      TextSpan(
                        text: '"Attack X"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' ability allows a character to do a base X amount of damage to an enemy within their range. Figures cannot attack their allies. There' +
                                  ' are two types of attacks: '),
                      TextSpan(
                        text: 'ranged',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'melee',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: '.\n'),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/ranged_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Ranged attacks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' are accompanied by a '),
                      TextSpan(
                        text: '"Range Y"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' value, which means any enemy within Y hexes can be ' +
                              'targeted by the attack. Any ranged attack targeting an adjacent enemy gains Disadvantage against that target.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Melee attacks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' have no accompanying range value and are considered to have a default range of 1 hex, which' +
                              ' means they typically target adjacent enemies.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Line-of-sight:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' All ranged' +
                              ' and melee attacks can only be performed against enemies within line-of-sight, which means that a line can be drawn from any corner of the attacker\'s' +
                              ' hex to any corner of the defender\'s hex without touching any part of a wall (the line edge of a map tile or the entire area of any partial hex along' +
                              ' the edge of a map tile, unless covered by an overlay tile). Only walls block line-of-sight. In addition, '),
                      TextSpan(
                        text: 'any ability',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' which specifies a range can only' +
                              ' be performed on a figure within line-of-sight. If a non-attack ability does not specify a range, then line-of-sight is not required. Also note that ' +
                              'two hexes separated by a wall line are not considered adjacent, and range cannot be counted through walls.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'When attacking, the base attack value' +
                              ' written on the card can be modified by three types of values in the following order. Repeat these steps for each individual enemy targeted by the ' +
                              'attack:\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(text: 'An '),
                            TextSpan(
                              text: 'attacker\'s attack modifiers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' are applied first. These modifiers include bonuses and penalties from active ability cards, items, and ' +
                                    'other sources (e.g., +1 Attack from poison).\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(text: 'Next, an '),
                            TextSpan(
                              text: 'attack modifier card',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' is drawn from the attacker\'s attack modifier deck and applied.\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(text: 'Lastly, the '),
                            TextSpan(
                              text: 'defender\'s defensive bonuses',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' are applied. This reduces the incoming attack value for each individual enemy targeted based on each defender\'s ' +
                                    'own shield modifier or other defensive bonuses.\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text: 'If there are multiple modifiers in any single step of this process, the player chooses the order' +
                                    ' in which they are applied. Also note that because the bonuses are applied '),
                            TextSpan(
                              text: 'per target',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ', it is possible for the same attack action to ultimately deal different damage to each enemy it targets.\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Example: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: 'The Scoundrel performs an "Attack 3" ability on an adjacent elite Bandit Guard. The Scoundrel' +
                            ' adds a +2 attack modifier because of specific conditions set by the card and also is allowed to double the attack because of an active card in front' +
                            ' of her. She chooses to add the +2, then doubles the result, resulting in an "Attack 10". She then plays an attack modifier card to reveal a "-1",' +
                            ' so the attack is reduced to 9. Finally, the Bandit Guard has a shield value of 1, so the attack value is reduced to 8 and the bandit suffers 8' +
                            ' damage.\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Any damage suffered by a monster should be tracked on the stat sleeve in the section corresponding to the number on the specific' +
                              ' monster\'s standee. When a monster is brought to zero or fewer hit points by an attack or any source of damage, that monster immediately dies' +
                              ' and is removed from the board. Any additional effects of an attack are not applied once a monster dies.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'When a monster dies, a money token' +
                            ' is also placed on the hex where it died if the monster was not summoned or spawned.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
