import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Ambiguity extends StatelessWidget {
  static const routeName = '/ambiguity';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Ambiguity", 56),
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
                          text: '\nIf the rules ever make any monster action ambiguous because there are multiple viable hexes to which the monster could move, multiple equally ' +
                              'viable targets to heal or attack, or multiple hexes a monster could push or pull a character into, the players must decide which option the ' +
                              'monster will take.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
