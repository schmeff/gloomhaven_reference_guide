import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Stun extends StatelessWidget {
  static const routeName = '/stun';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Stun", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/stun_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: 'If a figure is stunned, it cannot perform '),
                      TextSpan(
                        text: 'any',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' abilities or use items on its turn '),
                      TextSpan(
                        text: 'except to perform a long rest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' (in the case of characters).' +
                              ' At the end of its next turn, the stun token is removed. Players must still play two cards or rest on their turn, and if a player plays ' +
                              'two cards while stunned, the actions played are not used, and the cards are simply discarded.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
