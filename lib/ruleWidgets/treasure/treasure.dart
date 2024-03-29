import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Treasure extends StatelessWidget {
  static const routeName = '/treasure';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Treasure", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/treasure.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Treasure tiles can be looted by a player for a variety of effects. There are two types of ' +
                              'treasure tiles: "goal" tiles and numbered tiles. Goal tiles are important for the completion ' +
                              'of a scenario, and the rules for looting them will be specified by the scenario. "Goal" tiles' +
                              ' are reset every time a scenario is played. Numbered tiles can provide a number of different ' +
                              'benefits.\n\nWhen one is looted, the looting player should immediately reference the number ' +
                              'of the tile with the treasure index in the back of the scenario book to discover what was looted. If a '),
                      TextSpan(
                        text: 'specific item name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' is listed, find this item in the deck of unique items and immediately ' +
                                  'add it to your pool of items. If an '),
                      TextSpan(
                        text: 'item design',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' is listed, find all copies of that item and add them to the city\'s available supply. '),
                      TextSpan(
                        text:
                            'Numbered treasure tiles can only be looted once.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' After they have been looted, they should be crossed off in the Scenario Book as a reminder.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
