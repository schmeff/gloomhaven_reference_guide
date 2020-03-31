import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class CharacterDamage extends StatelessWidget {
  static const routeName = '/characterDamage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Character Damage", 56),
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
                          text:
                              '\nWhenever any damage is dealt to a character, the player has two options:\n'),
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
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text:
                                    'Suffer the damage and move his or her hit point total on the tracking wheel down the appropriate number, or...\n'),
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
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text: 'Choose one card to lose from his or her hand or two cards to lose from' +
                                    ' his or her discard pile to negate the damage (any additional effects of the attack are still applied). Note that before a character acts' +
                                    ' in a round, the two cards chosen at the beginning of the round are neither in the player\'s hand or lost or discard pile, and so cannot ' +
                                    'be lost to negate damage.\n'),
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
                          text:
                              'Whenever a character is healed, move his or her hit point total on the tracking wheel up the appropriate number '),
                      WidgetSpan(
                        child: ReferenceLetterImage('d'),
                      ),
                      TextSpan(
                          text:
                              '. The tracking wheel cannot go above the character\'s maximum hit point value indicated on the player\'s character mat '),
                      WidgetSpan(
                        child: ReferenceLetterImage('e'),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/health_tracker_dial.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Container(
                  width: 250,
                  child: Image(
                    image: AssetImage('images/max_hitpoints.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
              ],
            ),
          )),
    );
  }
}
