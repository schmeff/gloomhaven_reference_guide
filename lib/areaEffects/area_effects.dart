import 'package:flutter/material.dart';
import 'package:gloomhaven_reference_guide/common/reference_letter_image.dart';

import '../common/rule_title.dart';

class AreaEffects extends StatelessWidget {
  static const routeName = '/areaEffects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Area Effects", 56),
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
                          text: '\nSome attacks and other abilities allow figures to target multiple hexes or multiple targets at the same time. In these cases, the area of' +
                              ' effect for the ability is shown on the ability card. Note that any rotational orientation of the depicted diagram is valid. Also note that ' +
                              'each target constitutes a separate attack (drawing its own attack modifier card), but all attacks together make up a single attack action.\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Image(
                        image: AssetImage('images/gray_hex.png'),
                      ),
                      margin: EdgeInsets.only(bottom: 15, top: 15),
                    ),
                    Container(
                      width: 75,
                      child: Image(
                        image: AssetImage('images/red_hex.png'),
                      ),
                      margin: EdgeInsets.only(bottom: 15, top: 15),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: ReferenceLetterImage('a'),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text:
                                    'Grey indicates the hex on which the figure is currently located. An area attack which includes a grey hex is always considered a melee attack.\n'),
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
                      margin: EdgeInsets.only(right: 5),
                      child: ReferenceLetterImage('b'),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text:
                                    'Red indicates the hexes with enemies affected by the ability.\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'For a ranged area attack, only one of the red hexes needs to be within the range ' +
                              'specified, and it does not need to contain an enemy. However, for both ranged and melee area attacks, you can only attack enemies in hexes you ' +
                              'have line of sight to.\n'),
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/ranged_aoe_attack.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                            text:
                                'Example: This attack indicates that the figure can perform a ranged "Attack 4" on a cluster of three hexes as long as at least one of those hexes is winthin Range 3.\n'),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/melee_aoe_attack.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                            text:
                                'Example: This attack indicates that the figure can perform a melee "Attack 3" on the cluster of three hexes.\n'),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('images/target_icon.png'),
                        width: 40,
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text: 'Some attacks are accompanied by a "Target X" value, which means the character can target X number of different enemies' +
                                    ' within the attack\'s range with the attack.'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: '\nFor any attack that targets multiple enemies, an attack modifier card is drawn for each target.' +
                              ' It is not possible to target the same enemy with multiple attacks from the same ability. Note: Abilities can never target allies (positive abilities' +
                              ' meant for allies will use the term "affect" instead of "target"). An ally can be within the affected area of an attack, but they will not be targeted ' +
                              'by it.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Note also that as long as an attack does not specify range, it is considered melee, such that it is possible to attack a non-adjacent target' +
                              ' with a melee attack if hex configuration allows.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
