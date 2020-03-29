import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class RoundBonuses extends StatelessWidget {
  static const routeName = '/roundBonuses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Round Bonuses", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: '\nRound bonuses will have this sybmol  '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/round_bonus.png'),
                          width: 30,
                        ),
                      ),
                      TextSpan(
                          text: ' on the card. The effect of the ability will be active from the time the card is played until the end' +
                              ' of the round, at which point the card will be placed in the player\'s discard or lost pile (depending on' +
                              ' whether the action also contains a '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/lost.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(text: ' symbol).\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'Even though a bonus card is placed in the active area, it is still considered discarded or lost, depending on whether the action ' +
                                  'also contains a '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/lost.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' symbol. At any time, these cards can be moved to the appropriate pile, however, doing so immediately removes any bonuses that' +
                                  ' were being applied by the card.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
