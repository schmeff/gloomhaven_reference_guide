import 'package:flutter/material.dart';
import '../../commonWidgets/reference_letter_image.dart';

import '../../commonWidgets/rule_title.dart';

class GainingExperience extends StatelessWidget {
  static const routeName = '/gainingExperience';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Gaining Experience", 56),
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
                              '\nSome actions also have an experience value attached to them, denoted by '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/experience_icon.png'),
                          width: 22,
                        ),
                      ),
                      TextSpan(
                          text: ' . When that action is taken, the character gains the number of experience ' +
                              'specified. An ability card cannot be played for the experience alone--a character must use one or more of the accompanying abilities to ' +
                              'earn the experience.\n'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                          text: 'In addition, sometimes the action specifies that experience is only earned under certain conditions, ' +
                              'such as consuming an elemental infusion or if the attacked target is adjacent to an attacker\'s allies '),
                      WidgetSpan(
                        child: ReferenceLetterImage('a'),
                      ),
                      TextSpan(
                          text:
                              '. Some persistent bonuses will also give a character experience, denoted by '),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage(
                              'images/persistent_experience_icon.png'),
                          width: 30,
                        ),
                      ),
                      TextSpan(
                          text: ', when that charge of the bonus is expended '),
                      WidgetSpan(
                        child: ReferenceLetterImage('b'),
                      ),
                      TextSpan(
                          text: ' (i.e., when the character token moves off' +
                              ' that slot). '),
                      TextSpan(
                        text:
                            'Characters do not automatically gain experience from killing monsters. Only using specific actions awards ' +
                                'experience.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage('images/single_out_card.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 30, top: 0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.body1,
                          children: [
                            TextSpan(
                                text:
                                    '\nExperience is tracked on the right side of the player\'s tracking dial by rotating the wheel to the appropriate number '),
                            WidgetSpan(
                              child: ReferenceLetterImage('c'),
                            ),
                            TextSpan(
                              text: '.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Image(
                          image:
                              AssetImage('images/experience_tracking_dial.png'),
                        ),
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
