import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class Bosses extends StatelessWidget {
  static const routeName = '/bosses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Bosses", 56),
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
                            '\nPlayers will occasionally encounter bosses in their adventures. All bosses have their own stat card but act using a universal "Boss" ability' +
                                ' card deck ',
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                      TextSpan(
                        text: ' Note ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'that bosses are not considered normal or elite monsters. Bosses perform special actions on their turn that are summarized' +
                            ' on their stat card. Explanations for more complicated abilities can be found in the Scenario Book.Bosses\' stats are often based on the ' +
                            'number of characters, which is signified by the letter "C" on the boss stat card. Lastly,',
                      ),
                      TextSpan(
                        text: ' bosses are immune to certain negative conditions. The' +
                            ' conditions to which they are immune are listed on their stat card ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WidgetSpan(
                        child: ReferenceLetterImage('b'),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  child: Image(
                    image: AssetImage('images/boss_card.png'),
                  ),
                  margin: EdgeInsets.only(top: 15),
                ),
                Container(
                  width: 300,
                  child: Image(
                    image: AssetImage('images/boss_sheet.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 25, top: 5),
                ),
              ],
            ),
          )),
    );
  }
}
