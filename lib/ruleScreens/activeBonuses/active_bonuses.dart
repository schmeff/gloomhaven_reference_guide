import 'package:flutter/material.dart';
import '../../commonWidgets/rule_title.dart';

class ActiveBonuses extends StatelessWidget {
  static const routeName = '/activeBonuses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Active Bonuses", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                      TextSpan(
                          text: '\nSome abilities can give a character, or his or her abilities, bonuses on other abilities, either persistently until certain conditions ' +
                              'are fulfilled or for the rest of the round. These abilities are denoted with symbols, and the cards with these effects are playing' +
                              ' into the active area in front of the player to keep track of these bonuses.\n'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/persistentBonuses');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Persistent Bonuses',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/roundBonuses');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Round Bonuses',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/shield');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/shield_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      ),
                      Text(
                        'Shield',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/retaliate');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/retaliate_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 7, bottom: 7, right: 10),
                      ),
                      Text(
                        'Retaliate',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/heal');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('images/heal_icon.png'),
                          width: 40,
                        ),
                        margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                      ),
                      Text(
                        'Heal',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          )),
    );
  }
}
