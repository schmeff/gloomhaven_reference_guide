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
import './determiningInitiative/determining_initiative.dart';
import './characterTurn/character_turn.dart';
import './move/move.dart';
import './revealingARoom/revealing_a_room.dart';
import './attack/attack.dart';
import './advantageAndDisadvantage/advantage_and_disadvantage.dart';
import './areaEffects/area_effects.dart';
import './attackEffects/attack_effects.dart';
import './addTarget/add_target.dart';
import './push/push.dart';
import './pull/pull.dart';
import './pierce/pierce.dart';

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
    DeterminingInitiative.routeName: (context) => DeterminingInitiative(),
    CharacterTurn.routeName: (context) => CharacterTurn(),
    Move.routeName: (context) => Move(),
    RevealingARoom.routeName: (context) => RevealingARoom(),
    Attack.routeName: (context) => Attack(),
    AdvantageAndDisadvantage.routeName: (context) => AdvantageAndDisadvantage(),
    AreaEffects.routeName: (context) => AreaEffects(),
    AttackEffects.routeName: (context) => AttackEffects(),
    Push.routeName: (context) => Push(),
    Pull.routeName: (context) => Pull(),
    Pierce.routeName: (context) => Pierce(),
    AddTarget.routeName: (context) => AddTarget(),
    RuleDescription.routeName: (context) => RuleDescription(),
  };

  get getRoutes => _routes;
}
