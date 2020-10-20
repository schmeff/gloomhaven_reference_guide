import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';
import '../../commonWidgets/reference_letter_image.dart';

class RoundTracker extends StatelessWidget {
  static const routeName = '/roundTracker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Round Tracker", 56),
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
                        text: '\nSome scenarios may require players to keep track of what round it is. A round track can be found at the top of the elemental' +
                            ' infusion table for this purpose. At the end of every round, simply move the tracker token ',
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text: ' forward one space.',
                      ),
                      TextSpan(
                        text: ' Note ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'that it is not necessary to keep track of the rounds for most scenarios.',
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Image(
                    image: AssetImage('images/round_tracker.png'),
                  ),
                  margin: EdgeInsets.only(top: 15),
                ),
              ],
            ),
          )),
    );
  }
}
