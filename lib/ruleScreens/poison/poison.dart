import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Poison extends StatelessWidget {
  static const routeName = '/poison';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Poison", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/poison_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If a figure is poisoned, all enemies add +1 Attack to all of their attacks targeting the figure. If a Heal ability is used on' +
                              ' a poisoned figure, the poison token is removed, and the Heal has no other effect.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
