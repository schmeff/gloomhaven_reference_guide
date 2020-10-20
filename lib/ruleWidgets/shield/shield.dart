import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Shield extends StatelessWidget {
  static const routeName = '/shield';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Shield", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/shield_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'A "Shield X" bonus ability gives the recipient a defender\'s bonus that reduces any incoming attack value by X. Multiple shield bonuses stack with one ' +
                                  'another and can be applied in any order. '),
                      TextSpan(
                        text:
                            'A shield bonus only applies to damage caused by an attack.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
