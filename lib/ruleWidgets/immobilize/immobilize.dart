import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

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
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'If a figure is immobilized, it cannot perform any '),
                      TextSpan(
                        text: 'move',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' abilities on its turn. At the end of its next turn, the immobilize token is removed.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
