import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class Treasure extends StatelessWidget {
  static const routeName = '/treasure';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Treasure", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/treasure.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('Treasure tiles can be looted by a player for a variety of effects. There are two types of ' +
                    'treasure tiles: "goal" tiles and numbered tiles. Goal tiles are important for the completion ' +
                    'of a scenario, and the rules for looting them will be specified by the scenario. "Goal" tiles' +
                    ' are reset every time a scenario is played. Numbered tiles can provide a number of different ' +
                    'benefits.\n\nWhen one is looted, the looting player should immediately reference the number ' +
                    'of the tile with the treasure index in the back of the scenario book to discover what was looted.' +
                    ' If a specific item name is listed, find this item in the deck of unique items and immediately ' +
                    'add it to your pool of items. If an item design is listed, find all copies of that item and add' +
                    ' them to the city\'s available supply. Numbered treasure tiles can only be looted once. After ' +
                    'they have been looted, they should be crossed off in the Scenario Book as a reminder.'),
              ],
            ),
          )),
    );
  }
}
