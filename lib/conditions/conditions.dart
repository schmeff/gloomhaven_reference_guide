import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Conditions extends StatelessWidget {
  static const routeName = '/conditions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Conditions", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: '\nCertain abilities may apply conditions to their targets. When a condition is applied to a figure (except curse and bless), the' +
                    ' respective token is placed on the stat sleeve in the section corresponding the number on the specific monster\'s standee to' +
                    ' signify the effect. The condition remains on the figure until the requirements for removing the specific effect are met. Only' +
                    ' one of each condition type may be applied to any single figure at a time, however conditions can be reapplied to refresh their' +
                    ' duration.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: 'The following are negative conditions. If an ability has the name of one of these conditions contained within it,' +
                    ' then the condition is applied to all targets of the ability, after the main effect of the ability is applied. Conditions are' +
                    ' applied regardless of whether the corresponding attack does damage.\n'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/poison');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/poison_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Poison',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wound');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/wound_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Wound',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/immobilize');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/immobilize_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Immobilize',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/disarm');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/disarm_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Disarm',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/stun');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/stun_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Stun',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/muddle');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/muddle_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Muddle',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/curse');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/curse_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Curse',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(text: 'The following are positive conditions. Figures can apply positive conditions to themselves or allies through specific actions. Positivice conditions cannot' +
                        ' be prematurely removed.\n'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/invisible');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/invisible_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Invisible',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/strengthen');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/strengthen_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Strengthen',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/bless');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/bless_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Bless',
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
