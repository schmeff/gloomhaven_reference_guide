import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class RevealingARoom extends StatelessWidget {
  static const routeName = '/revealingARoom';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Revealing A Room", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RuleText('During any part of a character\'s movement, if they enter a tile with a closed door, flip the door tile to the opened side and immediately ' +
                    'reveal the adjacent room on the other side of the door. The Scenario Book will then specify what monsters, money tokens, and special overlay ' +
                    'tiles should be placed in the revealed room, based on the number of characters (including exhausted characters). Note that, as in scenario ' +
                    'setup, the standee numbers of the monsters in the new room should be randomized when placed. It is possible to run out of specific types of ' +
                    'monster standees when revealing a room. If this happens, place only the standees that are available, starting with the monsters closest to the ' +
                    'revealing character.\n'),
                RuleText('Once everything is placed in the new room, any present monster types without an action card should have one drawn for ' +
                    'them now. Once the revealing character\'s turn ends, the initiative values of all monsters in the new room are reviewed, and any monster type ' +
                    'that has a lower initiative value than the revealing character (i.e., they should have acted earlier in the round) must immediately act out ' +
                    'their turn (in normal initiative order in case of multiple monster types in this situation). This ensures that all monsters revealed in the new ' +
                    'room will always take a turn in the round in which they are revealed.')
              ],
            ),
          )),
    );
  }
}
