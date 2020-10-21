import 'package:flutter/material.dart';

import 'rule_search.dart';
import 'rule_description.dart';

import '../data/rules.dart';

import '../classes/rule_description_arguments.dart';

class RulesList extends StatefulWidget {
  @override
  _RulesListState createState() => _RulesListState();
}

class _RulesListState extends State<RulesList> {
  static final List<Map<String, Object>> rules = Rules().getRules;

  List<Map<String, Object>> filteredRules = rules;

  void _updateSearchResults(String searchText) {
    List<Map<String, Object>> newRules = rules
        .where((rule) => rule['title']
            .toString()
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();

    setState(() {
      filteredRules = newRules;
    });
  }

  void _navigateToRule(int ruleIndex, BuildContext context) {
    var route = RuleDescription.routeName;
    if (filteredRules[ruleIndex]['route'] != null) {
      route = filteredRules[ruleIndex]['route'];
      Navigator.pushNamed(context, route);
      return;
    }

    Navigator.pushNamed(
      context,
      route,
      arguments: RuleDescriptionArguments(filteredRules[ruleIndex]['title'],
          filteredRules[ruleIndex]['description']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RuleSearch(_updateSearchResults),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            itemCount: filteredRules.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child: FlatButton(
                    onPressed: () {
                      _navigateToRule(index, context);
                    },
                    textColor: Colors.blueGrey[800],
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          filteredRules[index]['title'],
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'HighTower'),
                        ),
                      )
                    ])),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              color: Color.fromRGBO(135, 163, 123, 1),
              thickness: 1,
            ),
          ),
        )
      ],
    );
  }
}
