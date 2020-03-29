import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class ElementalInfusions extends StatelessWidget {
  static const routeName = '/elementalInfusions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Elemental Infusions", 56),
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
                          text: '\nSome abilities have an elemental affinity associated with them (either Fire, Ice, Air, Earth, Light, or Dark). If any of these symbols' +
                              ' is visible by itself in an action\'s description '),
                      WidgetSpan(
                        child: ReferenceLetterImage("a"),
                      ),
                      TextSpan(
                          text: ', it means that by performing any part of the action, the figure must infuse the ' +
                              'battlefield with that element. This is represented by moving the corresponding element\'s token to the "Strong" column of the elemental' +
                              ' infusion table at the end of the turn in which the ability was used.\n'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Image(
                          image: AssetImage(
                              'images/elemental_infusion_card_example.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Image(
                          image: AssetImage(
                              'images/elemental_infusion_board_example.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            text: '\n\nAt the end of every round, however, all elemental infusions will' +
                                ' wane, moving one step to the left in the table, from "Strong" to "Waning" or from "Waning" to "Inert".\n'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image(
                          image:
                              AssetImage('images/elemental_table_example.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Elemental infusions can be used' +
                              ' to augment the effects of certain abilities. This augment is represented by an elemental symbol covered with a red '),
                      WidgetSpan(
                        child: Icon(Icons.clear, size: 22, color: Colors.red),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage("b"),
                      ),
                      TextSpan(
                          text: ', followed by a' +
                              ' colon and how the ability is augmented if the element is consumed. If an ability is used that consumes an element and the corresponding' +
                              ' element token is in the Strong or Waning column, that element token may be used to augment the ability by moving the token to the Inert column.' +
                              ' A single icon cannot be used to consume more than one infusion, and it is not possible to create an element and consume it on the same turn,' +
                              ' but it may be consumed by anyone with a later turn in the initiative order of the same round.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If an ability contains multiple separate augments,' +
                              ' the player may choose which augments to use in any order. If a single augment lists multiple element uses, all elements must be used to activate' +
                              ' the augment.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Just like characters, monsters also have the ability to create and consume elements. Monsters always consume elements if they can,' +
                              ' and every activated monster of that type will gain the benefit of the consumed element, not just the first monster to consume it.\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image(
                          image: AssetImage(
                              'images/multi_colored_circle_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            text: 'This multi-colored circle represents any single one of the six elements. If this symbol is present on a monster\'s ability card, the players' +
                                ' choose which element is created or consumed.'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/flame_icon.png'),
                            ),
                          ),
                          Text('Fire'),
                          Container(
                            child: Image(
                              image: AssetImage('images/ice_icon.png'),
                            ),
                          ),
                          Text('Ice'),
                          Container(
                            child: Image(
                              image: AssetImage('images/air_icon.png'),
                            ),
                          ),
                          Text('Air'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/earth_icon.png'),
                            ),
                          ),
                          Text('Earth'),
                          Container(
                            child: Image(
                              image: AssetImage('images/light_icon.png'),
                            ),
                          ),
                          Text('Light'),
                          Container(
                            child: Image(
                              image: AssetImage('images/dark_icon.png'),
                            ),
                          ),
                          Text('Dark'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image(
                          image:
                              AssetImage('images/elemental_infusion_table.png'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
