import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class Doors extends StatelessWidget {
  static const routeName = '/doors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Doors", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/GloomhavenDoors.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('A door acts as a separation between two rooms. When a character moves onto a closed door ' +
                    'tile, they immediately flip over the door tile to the open side, revealing the adjacent room ' +
                    'tile. Immediately place overlay tiles, monsters, and money tokens as indicated in the scenario ' +
                    'description for the revealed room.'),
                RuleText('\nWhile closed doors do not hinder character movement at all, ' +
                    'they act as a wall for any monsters or character-summoned figures, and figures cannot be forced ' +
                    'through a closed door. Open doors do not hinder any movement and cannot be closed. Door art varies ' +
                    'by environment type, but they all function exactly the same.')
              ],
            ),
          )),
    );
  }
}