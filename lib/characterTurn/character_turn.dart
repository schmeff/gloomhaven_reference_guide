import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class CharacterTurn extends StatelessWidget {
  static const routeName = '/characterTurn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Character Turn", 56),
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
                          text: '\nOn a character\'s turn, he or she will perform the top action of one of the two ability cards played and the bottom action of the' +
                              ' other. The leading card designation used to determine initiative is no longer significant.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Either card can be played first ' +
                              'for its top or bottom action. When playing a card\'s action, the abilities of the action must be done in the order written and can\'t' +
                              ' be interrupted by the action on the other card. As soon as the action of a card is completed, it is immediately placed in the ' +
                              'appropriate area (discard pile, lost pile, or active area) before anything else happens. Players are typically free to choose not' +
                              ' to perform any part of the action on their card, however, they must perform any part that will cause a negative effect (e.g., reduce' +
                              ' hit points, lose cards, or cause a negative condition) on themselves or their allies.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'An ally is any figure that fights with a character.' +
                              ' This term includes summoned figures, but does not include the character itself. Abilities cannot affect allies unless the card or ' +
                              'rules specify otherwise.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Players can also use any card they play as an "Attack 2" action on the top half or a "Move 2" action on ' +
                              'the bottom. If a card is used this way, it is always discarded, regardless of what is printed on the card. On their turn, before, ' +
                              'during, or after performing their two actions, players can use any number of items they have equipped.\n'),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Image(
                    image: AssetImage('images/character_turn.png'),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
