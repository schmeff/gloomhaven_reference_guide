import 'package:flutter/material.dart';

import '../../commonWidgets/rule_title.dart';
import '../../commonWidgets/reference_letter_image.dart';

class FinishingAScenario extends StatelessWidget {
  static const routeName = '/finishingAScenario';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Finishing A Scenario", 56),
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
                        text:
                            '\nA scenario can end in one of two ways: success or failure. Once a scenario\'s success or failure conditions are triggered, ',
                      ),
                      // WidgetSpan(
                      //   child: ReferenceLetterImage('a'),
                      // ),
                      TextSpan(
                        text: ' the remainder of the round is played out, ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'and then the scenario ends.\n',
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      // WidgetSpan(
                      //   child: ReferenceLetterImage('a'),
                      // ),
                      TextSpan(
                        text: 'Success or failure',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ', players tally the experience their ' +
                            'individual characters earned during the scenario and tally the money tokens their characters looted during the scenario and convert' +
                            ' them into gold. Each money token looted is worth an amount of gold based on the scenario level. Anything not looted during the ' +
                            'scenario is ',
                      ),
                      TextSpan(
                        text: 'not ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'collected. Players also recover all lost and discarded ability cards, refresh all spent and exhausted item cards, ' +
                            'and return their hit point dials to their maximum hit point value so that they can start fresh in a future scenario. Players should' +
                            ' also go through their attack modifier deck and remove any BLESS cards, CURSE cards, and any other negative cards added through ' +
                            'scenario and item effects. This should also be done with the monster attack modifier deck. All battle goals are shuffled back into' +
                            ' the battle goal deck, regardless of whether they were completed.\n',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/battle_goal_card.png'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.body1,
                              children: [
                                TextSpan(
                                  text: 'Battle Goal Card',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/character_sheet.png'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.body1,
                              children: [
                                TextSpan(
                                  text: 'Character Sheet',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      // WidgetSpan(
                      //   child: ReferenceLetterImage('a'),
                      // ),
                      TextSpan(
                        text: '\nIf players successfully complete the scenario',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ', they receive ' +
                            'checkmarks for their characters\' completed battle goal cards at this time. Checkmarks are recorded on the player\'s character sheet' +
                            ' and completing a set of three immediately earns a character an additional perk. Even if a character is exhausted, as long as the ' +
                            'scenario was successfully completed, that character can still complete his or her battle goal, earn scenario rewards, and keep all' +
                            ' the money and experience he or she collected before becoming exhausted. There is no penalty for becoming exhausted. Players also ' +
                            'receive bonus experience for successfully completing the scenario. This bonus is equal to',
                      ),
                      TextSpan(
                        text: ' four plus twice the scenario level.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                        text: 'If' +
                            ' players are playing in a campaign, successfully completing a scenario will also allow them to read the conclusion flavor text of ' +
                            'the scenario and gain the benefits listed at the end. In a campaign the money and experience collected during a scenario will be ' +
                            'very important to improve a character\'s skills and abilities and should be tracked on the player\'s character sheet ',
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('b'),
                      ),
                      TextSpan(
                        text:
                            '. If the scenario was not part of a campaign, money and experience can be used as metric for gauging how well each character did.',
                      ),
                      TextSpan(
                        text: ' four plus twice the scenario level.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Image(
                    image: AssetImage('images/notes.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
          )),
    );
  }
}
