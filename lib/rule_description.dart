import 'package:flutter/material.dart';
import './rule_description_arguments.dart';

class RuleDescription extends StatelessWidget {
  static const routeName = '/ruleDescription';

  @override
  Widget build(BuildContext context) {
    final RuleDescriptionArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color.fromRGBO(222,210,204, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(135, 163, 123, 1),
        title: Text(
          arguments.title,
          style: TextStyle(
              color: Color.fromRGBO(53, 52, 48, 1),
              fontFamily: 'PirataOne',
              fontSize: 25
            ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Text(
                    arguments.description,
                    style: TextStyle(fontSize: 18, fontFamily: 'HighTower'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
