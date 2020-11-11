import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Heal extends StatelessWidget {
  static const routeName = '/heal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Heal", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/heal_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text:
                              'A "Heal X" ability allows a figure to return X hit points to either themselves or one ally within the ability\'s range. Heals are always accompanied ' +
                                  'by one of two labels:\n\n'),
                      TextSpan(
                        text: '"Range Y"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' means that any ally within Y hexes, or the figure performing the heal, can be affected by the heal. Like all ' +
                              'ranged abilities, the recipient must be in line-of-sight.\n\n'),
                      TextSpan(
                        text: '"Self"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' means the figure can only affect him or herself with the heal.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
