import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class Obstacles extends StatelessWidget {
  static const routeName = '/obstacles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Obstacles", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/obstacles.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Obstacles have varying artwork, but they all have the same function: figures cannot ' +
                              'move through obstacles with a normal movement, but can move through them with a Flying '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/fly_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(text: 'or Jump '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/jump_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(text: ' movement. '),
                      TextSpan(
                        text: 'Obstacles do not hinder ranged attacks.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' It is possible for certain character abilities to create or move obstacles. When doing so, players can' +
                              ' never completely cut off one area of the scenario map from another, such that the ' +
                              'area cannot be moved into without going through the obstacles.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
