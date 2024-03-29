import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';

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
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'If a figure enters a hex with hazardous terrain via normal or forced movement,' +
                              ' each hex will inflict half the damage of a trap (rounded down). Flying '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/fly_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(text: 'and Jump '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/jump_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' movements are unaffected by hazardous terrain.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Unlike traps, hazardous ' +
                              'terrain does not get removed after its effect is applied, but instead remains ' +
                              'on the board indefinitely. Starting a turn on or exiting these hexes does not ' +
                              'cause additional damage.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
