import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Items extends StatelessWidget {
  static const routeName = '/items';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Items", 56),
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
                          text: '\nCharacters can use items at any time, within the constraints of what is written on the item card, including in the middle of a card ability. ' +
                              'However, if an item affects an attack (e.g. adds a bonus, an effect, advantage, or disadvantage), it has to be used before an attack modifier ' +
                              'is drawn. If an effect is added to an attack, it functions exactly as if it had been written on the action card being used for the attack.' +
                              ' There is no limit to the number of items a character can use on their turn or even during a specific ability. Any instance of applying the' +
                              ' effects of an item card to a situation is considered a use. Like persistent abilities, an item with multiple use circles must be used when ' +
                              'the situation applies.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
