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
import './conditions/conditions.dart';
import './poison/poison.dart';
import './wound/wound.dart';
import './immobilize/immobilize.dart';
import './disarm/disarm.dart';
import './stun/stun.dart';
import './muddle/muddle.dart';
import './curse/curse.dart';
import './invisible/invisible.dart';
import './strengthen/strengthen.dart';
import './bless/bless.dart';
import './elementalInfusions/elemental_infusion.dart';
import './activeBonuses/active_bonuses.dart';
import './persistentBonuses/persistent_bonuses.dart';
import './roundBonuses/round_bonuses.dart';
import './shield/shield.dart';
import './retaliate/retaliate.dart';
import './heal/heal.dart';
import './summon/summon.dart';
import './recoverAndRefresh/recover_and_refresh.dart';
import './loot/loot.dart';
import './endOfTurnLooting/end_of_turn_looting.dart';
import './gainingExperience/gaining_experience.dart';
import './characterDamage/character_damage.dart';
import './exhaustion/exhaustion.dart';
import './items/items.dart';
import './monsterTurn/monster_turn.dart';
import './monsterOrderOfAction/monster_order_of_action.dart';
import './monsterFocus/monster_focus.dart';
import './monsterMovement/monster_movement.dart';
import './monsterInteractionWithTerrain/monster_interaction_with_terrain.dart';
import './monsterAttacks/monster_attacks.dart';
import './otherMonsterAbilities/other_monster_abilities.dart';
import './ambiguity/ambiguity.dart';
import './bosses/bosses.dart';
import './endOfRound/end_of_round.dart';
import './roundTracker/round_tracker.dart';

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
    MonsterInteractionWithTerrain.routeName: (context) => MonsterInteractionWithTerrain(),
    MonsterAttacks.routeName: (context) => MonsterAttacks(),
    OtherMonsterAbilities.routeName: (context) => OtherMonsterAbilities(),
    Ambiguity.routeName: (context) => Ambiguity(),
    Bosses.routeName: (context) => Bosses(),
    EndOfRound.routeName: (context) => EndOfRound(),
    RoundTracker.routeName: (context) => RoundTracker(),
    RuleDescription.routeName: (context) => RuleDescription(),
  };

  get getRoutes => _routes;
}
