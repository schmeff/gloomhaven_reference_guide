import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class EndOfTurnLooting extends StatelessWidget {
  static const routeName = '/endOfTurnLooting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("End Of Turn Looting", 56),
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
                          text: '\nIn addition to specific loot abilities, '),
                      TextSpan(
                        text:
                            'a character must also loot any money tokens or treasure tiles present in the hex he or she' +
                                ' occupies at the end of the character\'s turn.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' Character summons do not perform end-of-turn looting.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
