import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class AttackEffects extends StatelessWidget {
  static const routeName = '/attackEffects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Attack Effects", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: '\nAttack abilities will often have effects that increase their power. If an attack effect is listed on an ability card after an attack, the target ' +
                              '(or targets) of the attack is subject to the additional effect as well, after damage from the attack is resolved. '),
                      TextSpan(
                        text:
                            'Attack effects are applied regardless of whether the corresponding attack does damage.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' These effects (except experience gains) are optional and can be skipped. Some character' +
                              ' actions can also apply these effects without an attack, and in such cases the target of the effect is written on the ability card.\n'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/push');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/push_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Push',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pull');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/pull_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Pull',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pierce');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/pierce_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Pierce',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addTarget');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/add_target_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Add Target',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )),
    );
  }
}
