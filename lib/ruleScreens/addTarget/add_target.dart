import 'package:flutter/material.dart';
import '../../commonWidgets/rule_title.dart';

class AddTarget extends StatelessWidget {
  static const routeName = '/addTarget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Add Target", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/add_target_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: '\nIf a figure triggers this effect with an attack action, the figure may add an additional target within range to their ' +
                              'attack. All added effects and conditions of the attack action are applied to the target, as well, except for effects ' +
                              'that would result in additional targets outside of the original added target (e.g., area attacks).\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
