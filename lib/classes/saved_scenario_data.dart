import '../enums/global_achievement.dart';
import '../enums/party_achievement.dart';
import '../enums/quests.dart';
import '../enums/required_items.dart';

class SavedScenarioData {
  List<int> _availableScenarios;
  List<int> _completedScenarios;
  List<PartyAchievement> _partyAchievements;
  List<GlobalAchievement> _globalAchievements;
  List<Quests> _quests;
  List<RequiredItems> _items;

  SavedScenarioData(
    this._availableScenarios,
    this._completedScenarios,
    this._partyAchievements,
    this._globalAchievements,
    this._quests,
    this._items,
  );

  List<int> get availableScenarios {
    return this._availableScenarios;
  }

  List<int> get completedScenarios {
    return this._completedScenarios;
  }

  List<PartyAchievement> get partyAchievements {
    return this._partyAchievements;
  }

  List<GlobalAchievement> get globalAchievements {
    return this._globalAchievements;
  }

  List<Quests> get quests {
    return this._quests;
  }

  List<RequiredItems> get items {
    return this._items;
  }
}
