import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../classes/scenario.dart';
import '../classes/saved_scenario_data.dart';

import '../enums/party_achievement.dart';
import '../enums/global_achievement.dart';
import '../enums/quests.dart';
import '../enums/required_items.dart';

import '../data/scenarios_data.dart';

class Scenarios with ChangeNotifier {
  static const AVAILABLE_SCENARIOS_KEY = "AVAILABLE_SCENARIOS";
  static const COMPLETED_SCENARIOS_KEY = "COMPLETED_SCENARIOS";
  static const PARTY_ACHIEVEMENTS_KEY = "PARTY_ACHIEVEMENTS";
  static const GLOBAL_ACHIEVEMENTS_KEY = "GLOBAL_ACHIEVEMENTS";
  static const QUESTS_KEY = "QUESTS";
  static const ITEMS_KEY = "ITEMS";

  List<Scenario> _filteredScenarios = [];

  Scenarios() {
    this.updateScenarios();
  }

  Future<List<Scenario>> get filteredScenarios async {
    return this._filteredScenarios;
  }

  void completeScenario(Scenario s) async {
    final preferences = await SharedPreferences.getInstance();
    final int number = s.number;
    final List<PartyAchievement> partyAchievements = s.partyAchievements;
    final List<GlobalAchievement> globalAchievements = s.globalAchievements;
    final List<Quests> quests = s.requiredQuests;
    final List<RequiredItems> items = s.awardedItems;
    final List<int> locations = s.locations;

    if (!preferences.containsKey(COMPLETED_SCENARIOS_KEY)) {
      preferences.setStringList(COMPLETED_SCENARIOS_KEY, [number.toString()]);
    } else {
      List<int> completedScenarios = preferences
          .getStringList(COMPLETED_SCENARIOS_KEY)
          .map((e) => int.parse(e))
          .toList();
      if (!completedScenarios.contains(number)) {
        completedScenarios.add(number);
        completedScenarios.sort();
        preferences.setStringList(COMPLETED_SCENARIOS_KEY,
            completedScenarios.map((e) => e.toString()).toList());
      }
    }

    locations.forEach((location) => addAvailableScenario(location));

    if (partyAchievements.length > 0) {
      if (!preferences.containsKey(PARTY_ACHIEVEMENTS_KEY)) {
        List<String> achievementList = [];
        partyAchievements.forEach((achievement) {
          achievementList.add(achievement.index.toString());
        });
        preferences.setStringList(PARTY_ACHIEVEMENTS_KEY, achievementList);
      } else {
        List<int> partyAchievementIndexes = preferences
            .getStringList(PARTY_ACHIEVEMENTS_KEY)
            .map((e) => int.parse(e))
            .toList();
        partyAchievements.forEach((achievement) {
          if (!partyAchievementIndexes.contains(achievement.index)) {
            partyAchievementIndexes.add(achievement.index);
          }
        });
        preferences.setStringList(PARTY_ACHIEVEMENTS_KEY,
            partyAchievementIndexes.map((e) => e.toString()).toList());
      }
    }

    if (globalAchievements.length > 0) {
      if (!preferences.containsKey(GLOBAL_ACHIEVEMENTS_KEY)) {
        List<String> achievementList = [];
        globalAchievements.forEach((achievement) {
          achievementList.add(achievement.index.toString());
        });
        preferences.setStringList(GLOBAL_ACHIEVEMENTS_KEY, achievementList);
      } else {
        List<int> globalAchievementIndexes = preferences
            .getStringList(GLOBAL_ACHIEVEMENTS_KEY)
            .map((e) => int.parse(e))
            .toList();
        globalAchievements.forEach((achievement) {
          if (!globalAchievementIndexes.contains(achievement.index)) {
            globalAchievementIndexes.add(achievement.index);
          }
        });
        preferences.setStringList(GLOBAL_ACHIEVEMENTS_KEY,
            globalAchievementIndexes.map((e) => e.toString()));
      }
    }

    if (quests.length > 0) {
      if (!preferences.containsKey(QUESTS_KEY)) {
        List<String> questList = [];
        quests.forEach((quest) {
          questList.add(quest.index.toString());
        });
        preferences.setStringList(QUESTS_KEY, questList);
      } else {
        List<int> questIndexes = preferences
            .getStringList(QUESTS_KEY)
            .map((e) => int.parse(e))
            .toList();
        quests.forEach((quest) {
          if (!questIndexes.contains(quest.index)) {
            questIndexes.add(quest.index);
          }
        });
        preferences.setStringList(
            QUESTS_KEY, questIndexes.map((e) => e.toString()));
      }
    }

    if (items.length > 0) {
      if (!preferences.containsKey(ITEMS_KEY)) {
        List<String> itemList = [];
        quests.forEach((item) {
          itemList.add(item.index.toString());
        });
        preferences.setStringList(ITEMS_KEY, itemList);
      } else {
        List<int> itemIndexes = preferences
            .getStringList(ITEMS_KEY)
            .map((e) => int.parse(e))
            .toList();
        quests.forEach((item) {
          if (!itemIndexes.contains(item.index)) {
            itemIndexes.add(item.index);
          }
        });
        preferences.setStringList(
            ITEMS_KEY, itemIndexes.map((e) => e.toString()));
      }
    }
    updateScenarios();
  }

  void addAvailableScenario(int scenarioNumber) async {
    final preferences = await SharedPreferences.getInstance();
    if (!preferences.containsKey(AVAILABLE_SCENARIOS_KEY)) {
      preferences
          .setStringList(AVAILABLE_SCENARIOS_KEY, [scenarioNumber.toString()]);
    } else {
      List<int> availableScenarios = preferences
          .getStringList(AVAILABLE_SCENARIOS_KEY)
          .map((e) => int.parse(e))
          .toList();
      if (!availableScenarios.contains(scenarioNumber)) {
        availableScenarios.add(scenarioNumber);
        availableScenarios.sort();
        preferences.setStringList(AVAILABLE_SCENARIOS_KEY,
            availableScenarios.map((e) => e.toString()).toList());
      }
    }
    updateScenarios();
  }

  void removeAvailableScenario(int scenarioNumber) async {
    final preferences = await SharedPreferences.getInstance();
    if (preferences.containsKey(AVAILABLE_SCENARIOS_KEY)) {
      List<int> availableScenarios = preferences
          .getStringList(AVAILABLE_SCENARIOS_KEY)
          .map((e) => int.parse(e))
          .toList();
      availableScenarios.remove(scenarioNumber);
      preferences.setStringList(
          AVAILABLE_SCENARIOS_KEY, availableScenarios.map((e) => e.toString()));
    }
    updateScenarios();
  }

  Future<SavedScenarioData> get savedScenarioData async {
    final preferences = await SharedPreferences.getInstance();
    if (!preferences.containsKey(AVAILABLE_SCENARIOS_KEY)) {
      preferences.setStringList(AVAILABLE_SCENARIOS_KEY, ["1"]);
    }
    List<int> availableScenarios = preferences
        .getStringList(AVAILABLE_SCENARIOS_KEY)
        .map((e) => int.parse(e))
        .toList();
    List<int> completedScenarios = [];
    List<PartyAchievement> partyAchievements = [];
    List<GlobalAchievement> globalAchievements = [];
    List<Quests> quests = [];
    List<RequiredItems> items = [];
    if (preferences.containsKey(COMPLETED_SCENARIOS_KEY)) {
      completedScenarios = preferences
          .getStringList(COMPLETED_SCENARIOS_KEY)
          .map((e) => int.parse(e))
          .toList();
    }
    if (preferences.containsKey(PARTY_ACHIEVEMENTS_KEY)) {
      partyAchievements = preferences
          .getStringList(PARTY_ACHIEVEMENTS_KEY)
          .map((e) => PartyAchievement.values[int.parse(e)])
          .toList();
    }
    if (preferences.containsKey(GLOBAL_ACHIEVEMENTS_KEY)) {
      globalAchievements = preferences
          .getStringList(GLOBAL_ACHIEVEMENTS_KEY)
          .map((e) => GlobalAchievement.values[int.parse(e)])
          .toList();
    }
    if (preferences.containsKey(QUESTS_KEY)) {
      quests = preferences
          .getStringList(QUESTS_KEY)
          .map((e) => Quests.values[int.parse(e)])
          .toList();
    }
    if (preferences.containsKey(ITEMS_KEY)) {
      items = preferences
          .getStringList(ITEMS_KEY)
          .map((e) => RequiredItems.values[int.parse(e)])
          .toList();
    }

    return SavedScenarioData(
      availableScenarios,
      completedScenarios,
      partyAchievements,
      globalAchievements,
      quests,
      items,
    );
  }

  List<Scenario> get unfilteredScenarios {
    Map<int, dynamic> scenarioList = ScenariosData.scenarios;
    List<Scenario> scenarios = [];

    scenarioList.forEach((key, value) {
      int number = value["number"];
      String name = value["name"];
      String location = value["location"];
      List<int> newLocations = value["new_locations"].cast<int>();
      List<PartyAchievement> partyRequirementsComplete =
          value["party_requirements_complete"].cast<PartyAchievement>();
      List partyRequirementsIncomplete =
          value["party_requirements_incomplete"].cast<PartyAchievement>();
      List partyAchievements =
          value["party_achievements"].cast<PartyAchievement>();
      List globalRequirementsComplete =
          value["global_requirements_complete"].cast<GlobalAchievement>();
      List globalRequirementsIncomplete =
          value["global_requirements_incomplete"].cast<GlobalAchievement>();
      List globalAchievements =
          value["global_achievements"].cast<GlobalAchievement>();
      List<Quests> requiredQuests = [];
      List<RequiredItems> requiredItems = [];
      List<RequiredItems> awardedItems = [];
      if (value["quests"] != null) {
        requiredQuests = value["quests"].cast<Quests>();
      }
      if (value["required_items"] != null) {
        requiredItems = value["required_items"].cast<RequiredItems>();
      }
      if (value["awarded_items"] != null) {
        awardedItems = value["awarded_items"].cast<RequiredItems>();
      }
      Scenario s = Scenario(
        number,
        name,
        location,
        newLocations,
        partyRequirementsComplete,
        partyRequirementsIncomplete,
        globalRequirementsComplete,
        globalRequirementsIncomplete,
        requiredQuests,
        requiredItems,
        partyAchievements,
        globalAchievements,
        awardedItems,
      );
      scenarios.add(s);
    });
    return scenarios;
  }

  updateScenarios() async {
    SavedScenarioData savedData = await savedScenarioData;
    List<Scenario> allScenarios = unfilteredScenarios;

    List<int> completedScenarios = savedData.completedScenarios;

    allScenarios.forEach((scenario) {
      if (completedScenarios.contains(scenario.number)) {
        scenario.setCompleted(true);
      } else {
        if (scenario.number == 1) {
          scenario.setAvailable(true);
        } else {
          scenario.setAvailable(isScenarioAvailable(scenario, savedData));
        }
      }
    });

    this._filteredScenarios = allScenarios;
    notifyListeners();
  }

  bool isScenarioAvailable(Scenario scenario, SavedScenarioData savedData) {
    if (!savedData.availableScenarios.contains(scenario.number)) {
      return false;
    }
    scenario.partyRequirementsComplete.forEach((partyAchievement) {
      if (!savedData.partyAchievements.contains(partyAchievement)) {
        return false;
      }
    });
    scenario.partyRequirementsIncomplete.forEach((partyAchievement) {
      if (savedData.partyAchievements.contains(partyAchievement)) {
        return false;
      }
    });
    scenario.globalRequirementsComplete.forEach((globalAchievement) {
      if (!savedData.globalAchievements.contains(globalAchievement)) {
        return false;
      }
    });
    scenario.globalRequirementsIncomplete.forEach((globalAchievement) {
      if (savedData.globalAchievements.contains(globalAchievement)) {
        return false;
      }
    });
    scenario.requiredQuests.forEach((quest) {
      if (!savedData.quests.contains(quest)) {
        return false;
      }
    });
    scenario.requiredItems.forEach((item) {
      if (!savedData.items.contains(item)) {
        return false;
      }
    });
    return true;
  }
}
