import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Traps extends StatelessWidget {
  static const routeName = '/traps';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Traps", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/traps.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'A trap is sprung when a figure enters its hex with normal or forced' +
                                  ' movement. Flying '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/fly_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(text: 'and Jump '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/jump_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(
                          text: ' movements are unaffected by traps. When a ' +
                              'trap is sprung, it inflicts some negative effect on the figure who ' +
                              'sprung it and then it is '),
                      TextSpan(
                        text: 'removed from the board',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: '. A trap can also be disarmed' +
                              ' through specific actions to remove it from the board without suffering its ' +
                              'negative effects. Trap effects are varied and are specified in the Scenario Book. ' +
                              'If part of a trap\'s effect is listed as "damage", the trap will inflict '),
                      TextSpan(
                        text: '2+L damage',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' on the affected figure, where L is the '),
                      TextSpan(
                        text: 'scenario level',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: '.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Characters and monsters can also create traps on the board, with the effects specified by' +
                              ' the ability that creates the trap. Whenever a trap is placed on the board,' +
                              ' tokens for the damage and effects the trap applies should be placed on top ' +
                              'of the trap tile for easy reference.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
