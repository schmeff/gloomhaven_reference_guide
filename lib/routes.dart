import './doors/doors.dart';
import './corridors/corridors.dart';
import './traps/traps.dart';
import './hazardousTerrain/hazardous_terrain.dart';
import './obstacles/obstacles.dart';
import './difficultTerrain/difficult_terrain.dart';
import './treasure/treasure.dart';
import './roundOverview/round_overview.dart';
import './cardSelection/card_selection.dart';
import './scenarioLevel/scenario_level.dart';
import './resting/resting.dart';

import './rule_description.dart';

class Routes {
  final _routes = {
    Doors.routeName: (context) => Doors(),
    Corridors.routeName: (context) => Corridors(),
    Traps.routeName: (context) => Traps(),
    HazardousTerrain.routeName: (context) => HazardousTerrain(),
    Obstacles.routeName: (context) => Obstacles(),
    DifficultTerrain.routeName: (context) => DifficultTerrain(),
    Treasure.routeName: (context) => Treasure(),
    ScenarioLevel.routeName: (context) => ScenarioLevel(),
    RoundOverview.routeName: (context) => RoundOverview(),
    CardSelection.routeName: (context) => CardSelection(),
    Resting.routeName: (context) => Resting(),
    RuleDescription.routeName: (context) => RuleDescription(),
  };

  get getRoutes => _routes;
}
