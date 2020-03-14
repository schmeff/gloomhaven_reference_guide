import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class DeterminingInitiative extends StatelessWidget {
  static const routeName = '/determiningInitiative';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Determing Initiative", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RuleText('After players have either selected their two action cards or declared a long rest, the players reveal a monster ability' +
                    ' card for each type of monster that has at least one figure currently on the map. In addition, each player not taking a' +
                    ' long rest reveals his or her selected cards for the round, placing their leading card on top so that its initiative value is' +
                    ' visible.\n'),
                Container(
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                        child: Image(
                          image: AssetImage('images/initiative_icon.png'),
                        ),
                      ),
                      RuleText('Initiative Icon'),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('Initiative order is determined by comparing the initiative values on all played monster ability cards and all ' +
                    'of the players\' leading cards. Whoever has the lowest initiative value takes their turn first, then the next highest, and ' +
                    'so on until every figure on the board has acted. When a monster type takes an action, each monster of that type will perform ' +
                    'the actions listed on their played ability card, starting with elites and then normal monsters in ascending standee order.\n'),
                RuleText('If there is ever a tie in initiative between players, consult the non-leading card of each player to break the tie. (If ' +
                    'there is still a tie, players should decide among themselves who goes first). If there is a tie between a player and a monster' +
                    ' type, the player goes first. If there is a tie between two monster types, the players decide which goes first.\n'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        width: 150,
                        child: Image(
                          image: AssetImage('images/player_initiative.png'),
                        ),
                      ),
                    SizedBox(
                        width: 150,
                        child: Image(
                          image: AssetImage('images/monster_initiative.png'),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
