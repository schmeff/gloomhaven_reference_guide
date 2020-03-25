import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class AdvantageAndDisadvantage extends StatelessWidget {
  static const routeName = '/advantageAndDisadvantage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Advantage And Disadvantage", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RuleText(
                    'Some attacks may have either Advantage or Disadvantage.\n'),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'An attacker with Advantage will draw two modifier cards from their deck and use whichever ' +
                                  'one is better '),
                      WidgetSpan(
                        child: ReferenceLetterImage("a"),
                      ),
                      TextSpan(
                          text: '. If one rolling modifier card was drawn, its effect is added to the other card played. If two rolling modifier cards were drawn, ' +
                              'continue to draw cards until a rolling modifier is not drawn and then add together all drawn effects. '),
                      WidgetSpan(
                        child: ReferenceLetterImage("b"),
                      ),
                      TextSpan(
                          text: '. If two rolling modifier cards were drawn, ' +
                              'continue to draw cards until a rolling modifier is not drawn and then add together all drawn effects '),
                      WidgetSpan(
                        child: ReferenceLetterImage("c"),
                      ),
                      TextSpan(text: '.\n'),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('images/modifier_deck.png'),
                        width: 80,
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      width: 50,
                      child: Icon(Icons.arrow_downward),
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      width: 150,
                      child: Image(
                        image: AssetImage('images/modifier_deck_a.png'),
                      ),
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      width: 160,
                      child: Image(
                        image: AssetImage('images/modifier_deck_b.png'),
                      ),
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      width: 240,
                      child: Image(
                        image: AssetImage('images/modifier_deck_c.png'),
                      ),
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
