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
        title: Text(
          arguments.title,
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
                    arguments.description
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
