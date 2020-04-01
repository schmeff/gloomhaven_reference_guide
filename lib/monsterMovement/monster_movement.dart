import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class MonsterMovement extends StatelessWidget {
  static const routeName = '/monsterMovement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Movement", 56),
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
                          text: 'A "Shield X" bonus ability gives the recipient a defender\'s bonus that reduces any incoming attack value by X. Multiple shield bonuses stack with one ' +
                              'another and can be applied in any order. A shield bonus only applies to damage caused by an attack.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
