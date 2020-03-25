import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class Corridors extends StatelessWidget {
  static const routeName = '/corridors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Corridors", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/corridor.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText(
                    'A corridor is placed on the connection of two map tiles to ' +
                        'cover the walls and create a single room out of multiple map tiles. ' +
                        'Corridors act like normal empty hexes.'),
              ],
            ),
          )),
    );
  }
}
