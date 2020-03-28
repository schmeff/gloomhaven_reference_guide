import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Immobilize extends StatelessWidget {
  static const routeName = '/immobilize';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Immobilize", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/immobilize_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Text(
                    'If a figure is immobilized, it cannot perform any move abilities on its turn. At the end of its next turn, the immobilize token is removed.\n'),
              ],
            ),
          )),
    );
  }
}
