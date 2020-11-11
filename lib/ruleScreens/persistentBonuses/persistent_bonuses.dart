import 'package:flutter/material.dart';
import '../../commonWidgets/reference_letter_image.dart';

import '../../commonWidgets/rule_title.dart';

class PersistentBonuses extends StatelessWidget {
  static const routeName = '/persistentBonuses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Persistent Bonuses", 56),
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
                              '\nPersistent bonuses can be identified by the symbol '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/persistent_bonus.png'),
                          width: 30,
                        ),
                      ),
                      TextSpan(
                          text: ' displayed on the card. These ability effects will be active from the time the card is ' +
                              'played until the conditions specified on the card are met. These conditions usually track the number of times a particular game event has' +
                              ' occurred, such as making or defending against an attack. Place a token on the first marked position of the card\'s action and advance it' +
                              ' one space each time the effect is triggered, left to right, top to bottom. When the ability has been used once for each space on the card, ' +
                              'remove the card from play by placing it in the lost pile. Players must use the benefits of a persistent bonus when possible, even if no benefit' +
                              ' is gained. If there are no conditions specified or positions marked, the card may remain in the player\'s active area for the rest of the ' +
                              'scenario and can be removed from play at any time by placing it in the lost pile.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: 'Example: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text:
                            'The Spellweaver plays her Frost Armor ability, which negates the next two sources of damage against her. She places a character token on ' +
                                'the first circle of the card ',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text: '. Then each time afterward that she normally would suffer 1 or more points of damage, the bonus is applied, the damage is negated, and the token' +
                            ' is moved forward one space. Once the token moves twice, the card is moved to the player\'s lost pile and the bonus is no longer active.\n',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/frost_armor_card.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image: AssetImage('images/brute_token_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image: AssetImage('images/cragheart_token_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image: AssetImage('images/mindthief_token_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image: AssetImage('images/scroundrel_token_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image:
                              AssetImage('images/spellweaver_token_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Image(
                          image: AssetImage('images/tinkerer_token_icon.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Examples of Character Tokens\n',
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
