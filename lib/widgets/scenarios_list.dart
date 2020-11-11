import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/scenario.dart';

import './scenario_list_item.dart';

import '../providers/scenarios.dart';

class ScenariosList extends StatefulWidget {
  List<Scenario> scenarios = [];

  @override
  _ScenariosListState createState() => _ScenariosListState();
}

class _ScenariosListState extends State<ScenariosList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: Provider.of<Scenarios>(context).filteredScenarios,
          builder: (ctx, scenariosSnapshot) => scenariosSnapshot.hasData
              ? Expanded(
                  child: ListView.builder(
                    itemCount: scenariosSnapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ScenarioListItem(scenariosSnapshot.data[index]);
                    },
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
