import 'package:flutter/material.dart';
import 'package:gloomhaven_reference_guide/rule_description_arguments.dart';


import './rule_description.dart';
import './rules.dart';
import './rule_search.dart';
import './routes.dart';

void main() => runApp(GloomhavenApp());

class GloomhavenApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GloomhavenAppState();
  }
}

class _GloomhavenAppState extends State<GloomhavenApp> {
  static final List<Map<String, Object>> rules = Rules().getRules;

  List<Map<String, Object>> filteredRules = rules;

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

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes().getRoutes,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(222, 210, 204, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(135, 163, 123, 1),
          title: Text(
            "Gloomhaven Reference Guide",
            style: TextStyle(
                color: Color.fromRGBO(53, 52, 48, 1),
                fontFamily: 'PirataOne',
                fontSize: 25),
          ),
        ),
        body: Column(
          children: <Widget>[
            RuleSearch(_updateSearchResults),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
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
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'HighTower'),
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
        ),
      ),
    );
  }
}
