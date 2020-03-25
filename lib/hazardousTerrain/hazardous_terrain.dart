import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class HazardousTerrain extends StatelessWidget {
  static const routeName = '/hazardousTerrain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Hazardous Terrain", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/hazardous_terrain.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText(
                    'If a figure enters a hex with hazardous terrain via normal or forced movement,' +
                        ' each hex will inflict half the damage of a trap (rounded down). Flying and Jump' +
                        ' movements are unaffected by hazardous terrain.'),
                RuleText('\nUnlike traps, hazardous ' +
                    'terrain does not get removed after its effect is applied, but instead remains ' +
                    'on the board indefinitely. Starting a turn on or exiting these hexes does not ' +
                    'cause additional damage.'),
              ],
            ),
          )),
    );
  }
}
