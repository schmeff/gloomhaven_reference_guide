import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Wound extends StatelessWidget {
  static const routeName = '/wound';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Wound", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/wound_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If a figure is wounded, it suffers one point of damage at the start of each of its turns. If a Heal ability is used on a wounded' +
                              ' figure, the wound token is removed and the Heal continues normally. If a figure is both poisoned and wounded, a Heal ability would' +
                              ' remove both conditions but have no other effect.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
