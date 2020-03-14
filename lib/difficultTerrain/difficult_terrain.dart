import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class DifficultTerrain extends StatelessWidget {
  static const routeName = '/difficultTerrain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Difficult Terrain", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/difficult_terrain.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText(
                    'It takes a figure two normal movement points to enter a hex with difficult terrain. ' +
                        'Flying, Jump, and forced movements are unaffected by difficult terrain.'),
              ],
            ),
          )),
    );
  }
}
