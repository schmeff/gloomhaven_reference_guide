import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class Curse extends StatelessWidget {
  static const routeName = '/curse';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Curse", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/curse_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If a figure is cursed, it must shuffle a curse card into its remaining attack modifier deck. When this card is revealed through' +
                              ' one of the figure\'s attacks, it is removed from the deck instead of being placed into the attack modifier discard pile. Note that' +
                              ' there are two separate curse decks: 10 cards with a '),
                      WidgetSpan(
                        child: ReferenceLetterImage("monster_curse_card"),
                      ),
                      TextSpan(
                          text: ' in the lower left corner and 10 cards with an '),
                      WidgetSpan(
                        child: ReferenceLetterImage("character_curse_card"),
                      ),
                      TextSpan(
                          text: '. '),
                      WidgetSpan(
                        child: ReferenceLetterImage("monster_curse_card"),
                      ),
                      TextSpan(text: ' cards can only be placed in the monster attacker deck (when a monster is cursed), and '),
                      WidgetSpan(
                        child: ReferenceLetterImage("character_curse_card"),
                      ),
                      TextSpan(text: ' cards can only be placed in a character\'s attack deck (when a character or character summon is cursed). Thus, a maximum ' +
                                     'of only 10 curse cards can be placed into any one deck. '),
                    ],
                  ),
                ),
                Container(
                  width: 240,
                  child: Image(
                    image: AssetImage('images/curse_cards.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
              ],
            ),
          )),
    );
  }
}
