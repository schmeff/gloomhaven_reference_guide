import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class MonsterTurn extends StatelessWidget {
  static const routeName = '/monsterTurn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Turn", 56),
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
                          text: '\nMonsters\' decisions are controlled by a system of action cards that automate what the monsters will do on their turn in the initiative order.' +
                              ' They are not controlled by a separate player. All monsters will perform the actions listed on their ability card for the round in the order written.' +
                              ' They will not move or attack unless these actions are listed on their card.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Note that each type of monster can come in two ranks: normal and ' +
                              'elite. Normal monsters are designated with a white stand and elite monsters are designated with a gold stand. When an elite monster acts, use the' +
                              ' statistics in the "Elite" section of the monster statistic card.\n'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monsterOrderOfAction');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Monster Order Of Action',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monsterFocus');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Monster Focus',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monsterMovement');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Monster Movement',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monsterInteractionWithTerrain');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Monster Interaction With Terrain',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monsterAttacks');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Monster Attacks',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/otherMonsterAbilities');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Other Monster Abilities',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height:20)
              ],
            ),
          )),
    );
  }
}
