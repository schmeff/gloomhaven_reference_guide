import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Strengthen extends StatelessWidget {
  static const routeName = '/strengthen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Strengthen", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/strengthen_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'If a figure is strengthened, it gains Advantage on all of its attacks. At the end of its next turn, the strengthen token is removed.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
