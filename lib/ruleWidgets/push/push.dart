import 'package:flutter/material.dart';
import '../../commonWidgets/rule_title.dart';

class Push extends StatelessWidget {
  static const routeName = '/push';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Push", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/push_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'The target is forced to move X hexes in a direction specified by the attacker, but each hex moved must ' +
                                  'place the target '),
                      TextSpan(
                        text: 'farther away from',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' the attacker than it was previously. If there are no viable hexes ' +
                              'into which to push the target, the push ends. The target can be pushed through its allies, but not its enemies.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
