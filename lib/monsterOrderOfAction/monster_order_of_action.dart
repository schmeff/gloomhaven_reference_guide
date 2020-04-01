import 'package:flutter/material.dart';

import '../common/rule_title.dart';
import '../common/reference_letter_image.dart';

class MonsterOrderOfAction extends StatelessWidget {
  static const routeName = '/monsterOrderOfAction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 210, 204, 1),
      appBar: RuleTitle("Monster Order Of Action", 56),
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
                          text: '\nAll monsters of the same type take individual turns at the same initiative value listed on their monster ability card. All elites of a type activate first,' +
                              ' then the normal monsters of that type activate. If more than one elite or normal monster of a given type is present on the board, then the monsters ' +
                              'activate in ascending numerical order according to the numbers on their tokens '),
                      WidgetSpan(child: ReferenceLetterImage('a')),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/order_of_action_diagram.png'),
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text: 'Example:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' With the setup above, the elite monster to the right ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/2_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' will activate first, then the other elite ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/3_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Next the normal monster on the top will activate ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/1_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ', then the lower monster ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/4_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: '. Even though ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/1_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' is lower in numerical order than ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/2_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/3_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ', ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/2_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(
                        child: Image(
                          image: AssetImage('images/3_icon.png'),
                          width: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' are elite, so they activate first.',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image(
                          image: AssetImage('images/living_bones.png'),
                        ),
                        margin: EdgeInsets.only(
                            bottom: 15, top: 15, right: 20, left: 20),
                        height: 200,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image(
                          image: AssetImage(
                              'images/living_bones_monster_sheet.png'),
                        ),
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      TextSpan(
                        text:
                            'In addition to determining order of action, the number on the monster standee ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(child: ReferenceLetterImage('a')),
                      TextSpan(
                        text:
                            ' corresponds to a section of the monster stat sleeve ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      WidgetSpan(child: ReferenceLetterImage('b')),
                      TextSpan(
                        text:
                            ' that can be used to track damage and condition tokens.\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
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
