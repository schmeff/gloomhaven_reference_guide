import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class EndOfRound extends StatelessWidget {
  static const routeName = '/endOfRound';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("End Of Round", 56),
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
                          text:
                              '\nOnce all figures have taken a turn, the round ends and some cleanup steps may be necessary:\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 12),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'If a standard ',
                            ),
                            TextSpan(
                              text: '"2x" ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: Image(
                                image:
                                    AssetImage('images/2x_attack_modifier.png'),
                                width: 40,
                              ),
                            ),
                            TextSpan(
                              text: ' or ',
                            ),
                            TextSpan(
                              text: '"Null" ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            WidgetSpan(
                              child: Image(
                                image: AssetImage(
                                    'images/null_attack_modifier.png'),
                                width: 40,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' attack modifier card was drawn from a specific modifier deck during the round, shuffle all the discards of that deck back into its draw deck.\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 7),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text:
                                  'If a monster ability card with a shuffle symbol ',
                            ),
                            WidgetSpan(
                              child: Image(
                                image: AssetImage('images/shuffle_icon.png'),
                                width: 30,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' was drawn at the start of the round, shuffle all discards for the corresponding monster type back into its deck.\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 7),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text:
                                  'If there are any elemental infusion tokens in the ',
                            ),
                            TextSpan(
                              text: 'Strong ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  'column, move them to the Waning column. If there are any elemental infusion tokens in the ',
                            ),
                            TextSpan(
                              text: 'Waning ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' column, move them to Inert.\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 7),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text:
                                  'Place all active round bonus ability cards in the appropriate discard or lost pile (depending on whether an action with a ',
                            ),
                            WidgetSpan(
                              child: Image(
                                image: AssetImage('images/lost.png'),
                                width: 20,
                              ),
                            ),
                            TextSpan(
                              text: ' symbol was used).\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 25,
                      child: Icon(
                        Icons.lens,
                        size: 7,
                      ),
                      margin: EdgeInsets.only(top: 7),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                              text: 'Players may also perform a ',
                            ),
                            TextSpan(
                              text: 'short rest ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'if they are able.\n',
                            ),
                          ],
                        ),
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
