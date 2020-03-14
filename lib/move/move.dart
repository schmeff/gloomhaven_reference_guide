import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class Move extends StatelessWidget {
  static const routeName = '/move';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Move", 56),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/move_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('A "Move X" ability allows a character to move up to X number of hexes on the map. Figures (characters and monsters) can move through allies, ' +
                    'but cannot move through enemies or obstacles. Traps and other terrain effects of hexes must be resolved when a figure enters them with normal' +
                    ' movement. A figure cannot end its movement in the same hex as another figure. Figures can never move through walls.\n'),
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/jump_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('Some Move abilities' +
                    ' are specified as a "Jump". Move X (Jump) allows the character to ignore all figures and terrain effects during their movement. However,' +
                    ' the last hex of a jump is still considered a normal movement, and so must obey the normal movement rules above.\n'),
                Container(
                  width: 50,
                  child: Image(
                    image: AssetImage('images/fly_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                ),
                RuleText('Some figures may also' +
                    ' have the "Flying" special trait. This allows figures to completely ignore any figures and terrain tiles during any part of their movement,' +
                    ' including the last hex, except that they still must end their movement in an unoccupied hex (no figures present). This includes forced ' +
                    'movement like push or pull. If a figure loses its Flying trait while occupying an obstacle hex, it takes damage as if it had sprung a damage' +
                    ' trap and then moves immediately to the nearest empty hex (no figures, tokens, or overlay tiles of any kind present except corridors, pressure' +
                    ' plates, and open doors).\n'),
              ],
            ),
          )),
    );
  }
}