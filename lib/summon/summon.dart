import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class Summon extends StatelessWidget {
  static const routeName = '/summon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Summon", 56),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  width: 225,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(
                            image: AssetImage('images/summon_token_1.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(
                            image: AssetImage('images/summon_token_2.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(
                            image: AssetImage('images/summon_token_3.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Summons tokens\n',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Some abilities summon other ally figures to the board. Summoned figures (summons) are placed in an empty hex adjacent to the ' +
                              'figure performing the summon. If there are no available hexes, the summon ability cannot be used. Summons are represented by ' +
                              'a colored summon token. There are eight different colors of summon tokens so that multiple summons can be tracked at the same ' +
                              'time, and players can assign any color they like to a specific summon, placing tracker tokens on their summon ability cards for' +
                              ' easy reference.'),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/gnawing_horde_card.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Summons have basic statistics for hit points, attack value, move value, and range value along with any special' +
                              ' traits written on the ability card. A summon is considered a persistent bonus (the card is placed in the active area) until either' +
                              ' the summon loses all its hit points, its corresponding ability card is removed from the active area, or the summoner becomes exhausted,' +
                              ' at which point the summon is removed from the board.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'A summon\'s turn in the initiative order is always '),
                      TextSpan(
                        text: 'directly before the character who summoned it',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ', and is separate from that character\'s turn. Summons are not controlled by the summoning player, but ' +
                              'instead obey automated monster rules, permanently following the ability card '),
                      TextSpan(
                        text: '"Move+0, Attack+0"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ' (see Monster Turn on pp. 29-32 ' +
                              'for details) and using the player\'s attack modifier deck to perform its attacks.\n'),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Image(
                    image: AssetImage('images/summon_tracker_example.png'),
                  ),
                  margin: EdgeInsets.only(top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Summons tracker\n',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'A player can have multiple different summon' +
                              ' abilities in play at once, in which case they act in the order in which they were summoned. Summoned figures '),
                      TextSpan(
                        text: 'never',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' take a turn in the round they are summoned. Summon kills are credited to the owner of the summon.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
