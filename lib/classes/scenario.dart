import 'dart:math';

import '../enums/global_achievement.dart';
import '../enums/party_achievement.dart';
import '../enums/quests.dart';
import '../enums/required_items.dart';

class Scenario {
  int _number;
  String _name;
  String _mapLocation;
  List<int> _locations;
  List<PartyAchievement> _partyRequirementsComplete;
  List<PartyAchievement> _partyRequirementsIncomplete;
  List<GlobalAchievement> _globalRequirementsComplete;
  List<GlobalAchievement> _globalRequirementsIncomplete;
  List<Quests> _requiredQuests;
  List<RequiredItems> _requiredItems;
  List<PartyAchievement> _partyAchievements;
  List<GlobalAchievement> _globalAchievements;
  List<RequiredItems> _awardedItems;
  bool _available = false;
  bool _completed = false;
  bool _expanded = false;

  Scenario(
    this._number,
    this._name,
    this._mapLocation,
    this._locations,
    this._partyRequirementsComplete,
    this._partyRequirementsIncomplete,
    this._globalRequirementsComplete,
    this._globalRequirementsIncomplete,
    this._requiredQuests,
    this._requiredItems,
    this._partyAchievements,
    this._globalAchievements,
    this._awardedItems,
  );

  int get number {
    return this._number;
  }

  String get name {
    return this._name;
  }

  String get mapLocation {
    return this._mapLocation;
  }

  List<int> get locations {
    return this._locations;
  }

  List<PartyAchievement> get partyRequirementsComplete {
    return this._partyRequirementsComplete;
  }

  List<PartyAchievement> get partyRequirementsIncomplete {
    return this._partyRequirementsIncomplete;
  }

  List<GlobalAchievement> get globalRequirementsComplete {
    return this._globalRequirementsComplete;
  }

  List<GlobalAchievement> get globalRequirementsIncomplete {
    return this._globalRequirementsIncomplete;
  }

  List<Quests> get requiredQuests {
    return this._requiredQuests;
  }

  List<RequiredItems> get requiredItems {
    return this._requiredItems;
  }

  List<PartyAchievement> get partyAchievements {
    return this._partyAchievements;
  }

  List<GlobalAchievement> get globalAchievements {
    return this._globalAchievements;
  }

  List<RequiredItems> get awardedItems {
    return this._awardedItems;
  }

  bool get available {
    return this._available;
  }

  void setAvailable(bool available) {
    this._available = available;
  }

  bool get completed {
    return this._completed;
  }

  void setCompleted(bool completed) {
    this._completed = completed;
  }

  bool get expanded {
    return this._expanded;
  }

  void setExpanded(bool expanded) {
    this._expanded = expanded;
  }
}
