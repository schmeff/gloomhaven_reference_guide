import 'package:flutter/material.dart';
import '../../commonWidgets/rule_title.dart';

class Pull extends StatelessWidget {
  static const routeName = '/pull';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Pull", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/pull_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'The target is forced to move X hexes in a direction specified by the attacker, but each hex moved must place the target '),
                      TextSpan(
                        text: 'closer to',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' the attacker than it was previously. If there are no viable hexes into which to pull the target,' +
                              ' the pull ends. The target can be pulled through its allies, but not its enemies. Both push and pull effects are ' +
                              'considered movements, however, they are not affected by difficult terrain.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
