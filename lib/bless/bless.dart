import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Bless extends StatelessWidget {
  static const routeName = '/bless';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Bless", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image(
                    image: AssetImage('images/bless_icon.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                Text('If a figure is blessed, it must shuffle a bless card into its remaining attack modifier deck. When this card is revealed through ' +
                    'one of the figure\'s attacks, it is removed from the deck instead of being placed into the attack modifier discard pile.\n'),
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/bless_card.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
              ],
            ),
          )),
    );
  }
}
