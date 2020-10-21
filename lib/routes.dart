import './ruleScreens/doors/doors.dart';
import './ruleScreens/corridors/corridors.dart';
import './ruleScreens/traps/traps.dart';
import './ruleScreens/hazardousTerrain/hazardous_terrain.dart';
import './ruleScreens/obstacles/obstacles.dart';
import './ruleScreens/difficultTerrain/difficult_terrain.dart';
import './ruleScreens/treasure/treasure.dart';
import './ruleScreens/roundOverview/round_overview.dart';
import './ruleScreens/cardSelection/card_selection.dart';
import './ruleScreens/scenarioLevel/scenario_level.dart';
import './ruleScreens/resting/resting.dart';
import './ruleScreens/determiningInitiative/determining_initiative.dart';
import './ruleScreens/characterTurn/character_turn.dart';
import './ruleScreens/move/move.dart';
import './ruleScreens/revealingARoom/revealing_a_room.dart';
import './ruleScreens/attack/attack.dart';
import './ruleScreens/advantageAndDisadvantage/advantage_and_disadvantage.dart';
import './ruleScreens/areaEffects/area_effects.dart';
import './ruleScreens/attackEffects/attack_effects.dart';
import './ruleScreens/addTarget/add_target.dart';
import './ruleScreens/push/push.dart';
import './ruleScreens/pull/pull.dart';
import './ruleScreens/pierce/pierce.dart';
import './ruleScreens/conditions/conditions.dart';
import './ruleScreens/poison/poison.dart';
import './ruleScreens/wound/wound.dart';
import './ruleScreens/immobilize/immobilize.dart';
import './ruleScreens/disarm/disarm.dart';
import './ruleScreens/stun/stun.dart';
import './ruleScreens/muddle/muddle.dart';
import './ruleScreens/curse/curse.dart';
import './ruleScreens/invisible/invisible.dart';
import './ruleScreens/strengthen/strengthen.dart';
import './ruleScreens/bless/bless.dart';
import './ruleScreens/elementalInfusions/elemental_infusion.dart';
import './ruleScreens/activeBonuses/active_bonuses.dart';
import './ruleScreens/persistentBonuses/persistent_bonuses.dart';
import './ruleScreens/roundBonuses/round_bonuses.dart';
import './ruleScreens/shield/shield.dart';
import './ruleScreens/retaliate/retaliate.dart';
import './ruleScreens/heal/heal.dart';
import './ruleScreens/summon/summon.dart';
import './ruleScreens/recoverAndRefresh/recover_and_refresh.dart';
import './ruleScreens/loot/loot.dart';
import './ruleScreens/endOfTurnLooting/end_of_turn_looting.dart';
import './ruleScreens/gainingExperience/gaining_experience.dart';
import './ruleScreens/characterDamage/character_damage.dart';
import './ruleScreens/exhaustion/exhaustion.dart';
import './ruleScreens/items/items.dart';
import './ruleScreens/monsterTurn/monster_turn.dart';
import './ruleScreens/monsterOrderOfAction/monster_order_of_action.dart';
import './ruleScreens/monsterFocus/monster_focus.dart';
import './ruleScreens/monsterMovement/monster_movement.dart';
import './ruleScreens/monsterInteractionWithTerrain/monster_interaction_with_terrain.dart';
import './ruleScreens/monsterAttacks/monster_attacks.dart';
import './ruleScreens/otherMonsterAbilities/other_monster_abilities.dart';
import './ruleScreens/ambiguity/ambiguity.dart';
import './ruleScreens/bosses/bosses.dart';
import './ruleScreens/endOfRound/end_of_round.dart';
import './ruleScreens/roundTracker/round_tracker.dart';
import './ruleScreens/finishingAScenario/finishing_a_scenario.dart';

import 'widgets/rule_description.dart';

import './screens/main_screen.dart';

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
    Conditions.routeName: (context) => Conditions(),
    Poison.routeName: (context) => Poison(),
    Wound.routeName: (context) => Wound(),
    Immobilize.routeName: (context) => Immobilize(),
    Disarm.routeName: (context) => Disarm(),
    Stun.routeName: (context) => Stun(),
    Muddle.routeName: (context) => Muddle(),
    Curse.routeName: (context) => Curse(),
    Invisible.routeName: (context) => Invisible(),
    Strengthen.routeName: (context) => Strengthen(),
    Bless.routeName: (context) => Bless(),
    ElementalInfusions.routeName: (context) => ElementalInfusions(),
    ActiveBonuses.routeName: (context) => ActiveBonuses(),
    PersistentBonuses.routeName: (context) => PersistentBonuses(),
    RoundBonuses.routeName: (context) => RoundBonuses(),
    Shield.routeName: (context) => Shield(),
    Heal.routeName: (context) => Heal(),
    Retaliate.routeName: (context) => Retaliate(),
    Summon.routeName: (context) => Summon(),
    RecoverAndRefresh.routeName: (context) => RecoverAndRefresh(),
    Loot.routeName: (context) => Loot(),
    EndOfTurnLooting.routeName: (context) => EndOfTurnLooting(),
    GainingExperience.routeName: (context) => GainingExperience(),
    CharacterDamage.routeName: (context) => CharacterDamage(),
    Exhaustion.routeName: (context) => Exhaustion(),
    Items.routeName: (context) => Items(),
    MonsterTurn.routeName: (context) => MonsterTurn(),
    MonsterOrderOfAction.routeName: (context) => MonsterOrderOfAction(),
    MonsterFocus.routeName: (context) => MonsterFocus(),
    MonsterMovement.routeName: (context) => MonsterMovement(),
    MonsterInteractionWithTerrain.routeName: (context) =>
        MonsterInteractionWithTerrain(),
    MonsterAttacks.routeName: (context) => MonsterAttacks(),
    OtherMonsterAbilities.routeName: (context) => OtherMonsterAbilities(),
    Ambiguity.routeName: (context) => Ambiguity(),
    Bosses.routeName: (context) => Bosses(),
    EndOfRound.routeName: (context) => EndOfRound(),
    RoundTracker.routeName: (context) => RoundTracker(),
    FinishingAScenario.routeName: (context) => FinishingAScenario(),
    RuleDescription.routeName: (context) => RuleDescription(),
    MainScreen.routeName: (context) => MainScreen(),
  };

  get getRoutes => _routes;
}
