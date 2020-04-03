import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Exhaustion extends StatelessWidget {
  static const routeName = '/exhaustion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Exhaustion", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: '\nA character can become '),
                      TextSpan(
                        text: 'exhausted',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' in one of two ways:\n'),
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
                                    'If a character ever drops below one hit point on the hit point tracker, or...\n'),
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
                                text: 'If, at the beginning of a round, a player cannot play two cards from his or her hand (because they have one card or no ' +
                                    'cards in his or her hand) and also cannot rest (because they have one card or no cards in their discard pile). Exhaustion due to' +
                                    ' insufficient cards does not affect a character\'s current hit point total.\n'),
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
                          text: 'In either case, all ability cards are placed in the ' +
                              'characters lost pile, the character\'s figure is removed from the map, and the character can no longer participate in the scenario in' +
                              ' any way. '),
                      TextSpan(
                        text:
                            'There is no coming back from being exhausted during a scenario',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ', and thus it should be avoided at all costs. If '),
                      TextSpan(
                        text: 'all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' characters become exhausted during a scenario, the scenario is lost.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
