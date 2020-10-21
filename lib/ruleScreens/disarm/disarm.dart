import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Disarm extends StatelessWidget {
  static const routeName = '/disarm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Disarm", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/disarm_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'If a figure is disarmed, it cannot perform any '),
                      TextSpan(
                        text: 'attack',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' abilities on its turn. At the end of its next turn, the disarm token is removed.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
