import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Invisible extends StatelessWidget {
  static const routeName = '/invisible';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Invisible", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/invisible_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Text('If a figure is invisible, it cannot be focused on or targeted by an enemy. Invisibility does not affect a figure\'s interactions' +
                    ' with his or her allies. At the end of its next turn, the invisible token is removed. Monsters treat invisible characters exactly ' +
                    'as if they were obstacles.\n'),
              ],
            ),
          )),
    );
  }
}
