import 'package:flutter/material.dart';

import '../common/rule_title.dart';

class RecoverAndRefresh extends StatelessWidget {
  static const routeName = '/recoverAndRefresh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Recover and Refresh", 56),
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
                          text: '\nCertain abilities allow a player to recover discarded or lost ability cards. This means that the player can look through his or' +
                              ' her discard or lost pile (or discarded or lost cards in his or her active area), select up to a number of cards specified in the' +
                              ' ability, and immediately return them to his or her hand. Some cards, however, cannot be recovered or refreshed once lost. This is' +
                              ' denoted by the '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/gone_forever_icon.png'),
                          width: 30,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' symbol. This symbol applies to the card no matter how the card was lost or consumed.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text:
                              'Refresh abilities allow players to regain the use of spent or consumed item cards.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'In the case of both recover and refresh, ' +
                              'the type of card gained (discarded or lost for ability cards, spent or consumed for item cards) is specified in the ability.\n'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 50,
                              child: Image(
                                image: AssetImage('images/recover_icon.png'),
                              ),
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.body1,
                                children: [
                                  TextSpan(
                                    text: 'Recover Ability Card\n',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 60,
                              child: Image(
                                image: AssetImage('images/refresh_icon.png'),
                              ),
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.body1,
                                children: [
                                  TextSpan(
                                    text: 'Refresh Item\n',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 65,
                              child: Image(
                                image:
                                    AssetImage('images/gone_forever_icon.png'),
                              ),
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.body1,
                                children: [
                                  TextSpan(
                                    text:
                                        'Cannot be recovered or refreshed once lost or consumed\n',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ],
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
          )),
    );
  }
}
