import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

class DifficultTerrain extends StatelessWidget {
  static const routeName = '/difficultTerrain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Difficult Terrain", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/difficult_terrain.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'It takes a figure two normal movement points to enter a hex with difficult terrain. ' +
                                  'Flying'),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/fly_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(text: ', Jump'),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/jump_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' and forced movements are unaffected by difficult terrain.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
