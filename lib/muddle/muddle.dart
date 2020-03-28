import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Muddle extends StatelessWidget {
  static const routeName = '/muddle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Muddle", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/muddle_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Text(
                    'If a figure is muddled, it gains Disadvantage on all of its attacks. At the end of its next turn, the muddle token is removed.\n'),
              ],
            ),
          )),
    );
  }
}
