import './ruleWidgets/doors/doors.dart';
import './ruleWidgets/corridors/corridors.dart';
import './ruleWidgets/traps/traps.dart';
import './ruleWidgets/hazardousTerrain/hazardous_terrain.dart';
import './ruleWidgets/obstacles/obstacles.dart';
import './ruleWidgets/difficultTerrain/difficult_terrain.dart';
import './ruleWidgets/treasure/treasure.dart';
import './ruleWidgets/roundOverview/round_overview.dart';
import './ruleWidgets/cardSelection/card_selection.dart';
import './ruleWidgets/scenarioLevel/scenario_level.dart';
import './ruleWidgets/resting/resting.dart';
import './ruleWidgets/determiningInitiative/determining_initiative.dart';
import './ruleWidgets/characterTurn/character_turn.dart';
import './ruleWidgets/move/move.dart';
import './ruleWidgets/revealingARoom/revealing_a_room.dart';
import './ruleWidgets/attack/attack.dart';
import './ruleWidgets/advantageAndDisadvantage/advantage_and_disadvantage.dart';
import './ruleWidgets/areaEffects/area_effects.dart';
import './ruleWidgets/attackEffects/attack_effects.dart';
import './ruleWidgets/addTarget/add_target.dart';
import './ruleWidgets/push/push.dart';
import './ruleWidgets/pull/pull.dart';
import './ruleWidgets/pierce/pierce.dart';
import './ruleWidgets/conditions/conditions.dart';
import './ruleWidgets/poison/poison.dart';
import './ruleWidgets/wound/wound.dart';
import './ruleWidgets/immobilize/immobilize.dart';
import './ruleWidgets/disarm/disarm.dart';
import './ruleWidgets/stun/stun.dart';
import './ruleWidgets/muddle/muddle.dart';
import './ruleWidgets/curse/curse.dart';
import './ruleWidgets/invisible/invisible.dart';
import './ruleWidgets/strengthen/strengthen.dart';
import './ruleWidgets/bless/bless.dart';
import './ruleWidgets/elementalInfusions/elemental_infusion.dart';
import './ruleWidgets/activeBonuses/active_bonuses.dart';
import './ruleWidgets/persistentBonuses/persistent_bonuses.dart';
import './ruleWidgets/roundBonuses/round_bonuses.dart';
import './ruleWidgets/shield/shield.dart';
import './ruleWidgets/retaliate/retaliate.dart';
import './ruleWidgets/heal/heal.dart';
import './ruleWidgets/summon/summon.dart';
import './ruleWidgets/recoverAndRefresh/recover_and_refresh.dart';
import './ruleWidgets/loot/loot.dart';
import './ruleWidgets/endOfTurnLooting/end_of_turn_looting.dart';
import './ruleWidgets/gainingExperience/gaining_experience.dart';
import './ruleWidgets/characterDamage/character_damage.dart';
import './ruleWidgets/exhaustion/exhaustion.dart';
import './ruleWidgets/items/items.dart';
import './ruleWidgets/monsterTurn/monster_turn.dart';
import './ruleWidgets/monsterOrderOfAction/monster_order_of_action.dart';
import './ruleWidgets/monsterFocus/monster_focus.dart';
import './ruleWidgets/monsterMovement/monster_movement.dart';
import './ruleWidgets/monsterInteractionWithTerrain/monster_interaction_with_terrain.dart';
import './ruleWidgets/monsterAttacks/monster_attacks.dart';
import './ruleWidgets/otherMonsterAbilities/other_monster_abilities.dart';
import './ruleWidgets/ambiguity/ambiguity.dart';
import './ruleWidgets/bosses/bosses.dart';
import './ruleWidgets/endOfRound/end_of_round.dart';
import './ruleWidgets/roundTracker/round_tracker.dart';
import './ruleWidgets/finishingAScenario/finishing_a_scenario.dart';

import 'widgets/rule_description.dart';

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
  };

  get getRoutes => _routes;
}
