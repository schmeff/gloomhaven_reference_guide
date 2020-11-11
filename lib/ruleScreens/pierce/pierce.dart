import 'package:flutter/material.dart';
import '../../commonWidgets/rule_title.dart';

class Pierce extends StatelessWidget {
  static const routeName = '/pierce';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Pierce", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/pierce_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: 'Up to X points of the target\'s Shield are ignored for the attack. Unlike other effects, pierce is applied while ' +
                              'calculating the accompanying attack damage instead of afterwards.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                        text: 'Example:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: ' an Attack 3 pierce 2 ability used on a' +
                            ' monster with Shield 3 would ignore two of the monster\'s Shield points and inflict 2 damage (modified by an attack ' +
                            'modifier card).\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
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
