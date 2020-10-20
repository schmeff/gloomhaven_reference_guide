import 'package:flutter/material.dart';

import '../../commonWidgets/rule_text.dart';
import '../../commonWidgets/rule_title.dart';

class Resting extends StatelessWidget {
  static const routeName = '/resting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Resting", 56),
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
                              '\nResting is the main way players can return discarded cards back into their hand of available cards. A player has two options' +
                                  ' when resting: a '),
                      TextSpan(
                        text: 'short rest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' or a '),
                      TextSpan(
                        text: 'long rest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: '. In both cases, the rest action can '),
                      TextSpan(
                        text: 'only',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' be taken if a player has two or more cards in his or her discard pile, and a rest action '),
                      TextSpan(
                        text: 'always',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' results in losing one of the discarded cards.\n'),
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
                            TextSpan(
                              text: 'Short rest:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' During the cleanup step of a round, a player can perform a short rest. This allows that player to immediately shuffle his or her discard pile and '),
                            TextSpan(
                              text: 'randomly',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' place one of the cards in the lost pile, then return the rest of the discarded cards to his or her hand. ' +
                                    'If the player would like to instead keep the card that was randomly lost, he or she can choose to suffer 1 damage and '),
                            TextSpan(
                              text: 'randomly',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: ' lose a '),
                            TextSpan(
                              text: 'different',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' discarded card, but this can only be done once per rest.\n'),
                          ],
                        ),
                      ),
                    ),
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
                              text: 'Long rest:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' A long rest is declared during the ' +
                                    'card selection step of a round and constitutes the player\'s entire turn for the round. Resting players are considered to ' +
                                    'have an initiative value of 99. On the player\'s turn, at the end of the initiative order, he or she must '),
                            TextSpan(
                              text: 'choose',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' to lose one of his or her discarded cards, then return the rest of the discarded ' +
                                  'cards to his or her hand. The resting character also',
                            ),
                            TextSpan(
                              text: ' performs a "Heal ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: Image(
                                image: AssetImage('images/heal_icon.png'),
                                width: 16,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' 2, Self" action and refreshes all of his or her spent item cards.\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
