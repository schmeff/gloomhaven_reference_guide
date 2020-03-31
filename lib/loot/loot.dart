import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Loot extends StatelessWidget {
  static const routeName = '/loot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Loot", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 75,
                  child: Image(
                    image: AssetImage('images/loot_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'A "Loot X" ability allows a character to pick up every money token and treasure tile within range X. This action is unaffected by the' +
                              ' positions of monsters or obstacles, but note this is considered a ranged ability for the purposes of line-of-sight. Money tokens' +
                              ' are kept in a player\'s personal supply and are not shared with the other players. If a treasure tile is looted, immediately refer' +
                              ' to the reference number in the treasure index in the back of the scenario book to determine what is found. If a character loots an' +
                              ' item he or she already owns a copy of, the new item is immediately sold to the city\'s available supply.\n'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/endOfTurnLooting');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'End Of Turn Looting',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
