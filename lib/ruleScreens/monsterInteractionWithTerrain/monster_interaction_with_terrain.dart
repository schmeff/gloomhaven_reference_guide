import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';
import '../../commonWidgets/reference_letter_image.dart';

class MonsterInteractionWithTerrain extends StatelessWidget {
  static const routeName = '/monsterInteractionWithTerrain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Interaction With Traps", 56),
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
                              '\nMonsters without the Flying trait consider negative hexes (traps or hazardous terrain) to be obstacles when determining focus and movement '),
                      TextSpan(
                        text: 'unless',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' movement through one of these hexes is the '),
                      TextSpan(
                        text: 'only',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' way they can focus on a target. In this case, they will use the path moving through' +
                              ' the smallest number of negative hexes possible to find a focus and suffer any consequences.\n'),
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/hazardous_terrain_1.png'),
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
                        text: ' Even though the Tinkerer ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text: ' is closer, Monster ',
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
                        text: ' will focus on the Brute ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('b'),
                      ),
                      TextSpan(
                        text: ' with its melee attack because it considers traps to be obstacles. Only if the Brute were not there and the only enemy the monster could focus on' +
                            ' was the Tinkerer would it do so and cross the traps to get to him.\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/hazardous_terrain_2.png'),
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
                        text: ' Archer ',
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
                        text: ' will focus on the Brute  ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text:
                            ' , since she can get in range to attack him with the least number of moves. If the archer has a Range 3 attack and Move 2, she will move to hex ',
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
                        text:
                            ' and attack her focus. If she only has Move 1, however, she will stay where she is and not attack. She will not move into the trap ',
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
                        text: ', even though it would put her in range to attack the Brute, because there is still another viable path to get within range of the Brute, even ' +
                            'if she can\'t use it this turn. She also will not move to hex ',
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
                        text:
                            ', as it would get her no closer to being in range of the Brute.\n',
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
