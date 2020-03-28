import 'package:flutter/material.dart';

import '../common/rule_title.dart';

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
                Text('If a figure is stunned, it cannot perform any abilities or use items on its turn except to perform a long rest (in the case of characters).' +
                    ' At the end of its next turn, the stun token is removed. Players must still play two cards or rest on their turn, and if a player plays ' +
                    'two cards while stunned, the actions played are not used, and the cards are simply discarded.\n'),
              ],
            ),
          )),
    );
  }
}
