import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class RoundOverview extends StatelessWidget {
  static const routeName = '/roundOverview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Round Overview", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: '\nA scenario consists of a series of '),
                      TextSpan(
                        text: 'rounds',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' that are played until players either meet the victory conditions of the ' +
                              'scenario or fail the scenario. A round consists of the following steps:\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'Card selection:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' Each player will ' +
                                    'either select two cards from his or her hand to play or declare he or she is performing a '),
                            TextSpan(
                              text: 'long rest action',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: ' for the round.\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '2. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'Determining initiative:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' Players reveal their cards for the round, and an ability card for each ' +
                                    'monster type currently in play is also revealed. An initiative order is then determined based on the initiative ' +
                                    'values of these revealed cards.\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '3. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'Character and monster turns:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: ' Starting with the lowest initiative, players ' +
                                    'and monsters will act out their turns, performing the actions on their cards, possibly modified by character ' +
                                    'item cards.\n'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '4. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'End of Round:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' Some cleanup may be required at the end of the round.\n'),
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
