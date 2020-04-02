import 'package:flutter/material.dart';

import '../common/rule_text.dart';
import '../common/rule_title.dart';

class CardSelection extends StatelessWidget {
  static const routeName = '/cardSelection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Card Selection", 56),
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
                          text: '\nAt the beginning of a round, each player will secretly select two cards from his or her hand to play facedown in front ' +
                              'of them. Of the two cards, one should be selected as the leading card, which will determine the player\'s order ' +
                              'in the initiative for the round.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'Players should not show other players the cards in their hands nor give specific ' +
                              'information about any numerical value or title on any of their cards. They are, however, allowed to make general ' +
                              'statements about their actions for the round and discuss strategy.\n'),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text: 'Examples of appropriate communication: "I\'m ' +
                                    'attacking this guard near the middle of the round."; "I\'m planning on moving here and healing you ' +
                                    'pretty early in the round, hopefully before the monsters attack."\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RuleText('- '),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text: 'Examples of inappropriate communication:' +
                                    ' "You\'ll need lower than an initiative 17 to go before me."; "I should be doing 4 points of damage to the bandit,' +
                                    ' so you don\'t have to worry about him."; "I\'m going to use Impaling Eruption and wipe out everyone."\n'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'During a player\'s turn, the two played cards will be used to perform actions and then are either discarded, lost, or activated,' +
                              ' depending on the actions that were taken. Played cards are normally placed in a player\'s discard pile unless ' +
                              'otherwise noted. Discarded cards can be returned to a player\'s hand through resting. If the performed action from' +
                              ' a card contains a symbol in the lower right of the action field, the card is instead placed in a player\'s lost pile.' +
                              ' Lost cards can only be returned to a player\'s hand during a scenario by using a special recover action. Whether' +
                              ' the corresponding card is lost or discarded, some actions may contain an active effect (denoted by the symbols below).' +
                              ' Instead of being placed in the discard or lost pile, the card is placed in the active area in front of the player to keep' +
                              ' track of the effect. Once the effect wears off, the card is then transferred to the appropriate pile.\n'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Active Effects',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'HighTower',
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/lost.png'),
                          ),
                          RuleText('Lost'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/recover.png'),
                          ),
                          RuleText('Recover'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/persistent_bonus.png'),
                          ),
                          RuleText('Persistent Bonus'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 94,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/round_bonus.png'),
                          ),
                          RuleText('Round Bonus'),
                        ],
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: '\nPlayers must either' +
                              ' play two cards from their hand or declare a long rest action at the beginning of every round. If a player only has one card' +
                              ' or no cards in their hand, the long rest action is their only option. If this option is also not available at the beginning' +
                              ' of a round because a player has only one card or no cards in their discard pile as well, that player is considered exhausted' +
                              ' and can no longer participate in the scenario.\n'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
