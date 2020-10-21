import '../enums/party_achievement.dart';
import '../enums/global_achievement.dart';

class Scenarios {
  static Map<int, Object> scenarios = {
    1: {
      "number": 1,
      "name": "Black Barrow",
      "location": "G-10",
      "new_locations": [2],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.FIRST_STEPS],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "global_achievements": [],
    },
    2: {
      "number": 2,
      "name": "Barrow Lair",
      "location": "G-11",
      "new_locations": [3, 4],
      "party_requirements_complete": [PartyAchievement.FIRST_STEPS],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    3: {
      "number": 3,
      "name": "Inox Encampment",
      "location": "G-3",
      "new_locations": [8, 9],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.THE_MERCHANT_FLEES],
      "party_achievements": [PartyAchievement.JEKSERAHS_PLANS],
      "global_achievements": []
    },
    4: {
      "number": 4,
      "name": "Crypt of the Damned",
      "location": "E-11",
      "new_locations": [5, 6],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    5: {
      "number": 5,
      "name": "Ruinous Crypt",
      "location": "D-6",
      "new_locations": [10, 14, 19],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    6: {
      "number": 6,
      "name": "Decaying Crypt",
      "location": "F-10",
      "new_locations": [8],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [
        PartyAchievement.JEKSERAHS_PLANS,
        PartyAchievement.DARK_BOUNTY,
      ],
      "global_achievements": []
    },
    7: {
      "number": 7,
      "name": "Vibrant Grotto",
      "location": "C-12",
      "new_locations": [20],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [
        GlobalAchievement.THE_POWER_OF_ENHANCEMENT,
        GlobalAchievement.THE_MERCHANT_FLEES,
      ],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    8: {
      "number": 8,
      "name": "Gloomhaven Warehouse",
      "location": "C-18",
      "new_locations": [7, 13, 14],
      "party_requirements_complete": [PartyAchievement.JEKSERAHS_PLANS],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.THE_DEAD_INVADE],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.THE_MERCHANT_FLEES]
    },
    9: {
      "number": 9,
      "name": "Diamond Mine",
      "location": "I-2",
      "new_locations": [11, 12],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.THE_MERCHANT_FLEES],
      "party_achievements": [],
      "global_achievements": []
    },
    10: {
      "number": 10,
      "name": "Plane of Elemental Power",
      "location": "C-7",
      "new_locations": [21, 22],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [
        GlobalAchievement.THE_RIFT_NEUTRALIZED
      ],
      "party_achievements": [PartyAchievement.A_DEMONS_ERRAND],
      "global_achievements": []
    },
    11: {
      "number": 11,
      "name": "Gloomhaven Square A",
      "location": "B-16",
      "new_locations": [16, 18],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.END_OF_THE_INVASION],
      "party_achievements": [],
      "global_achievements": [
        GlobalAchievement.END_OF_THE_INVASION,
        GlobalAchievement.CITY_RULE_ECONOMIC
      ]
    },
    12: {
      "number": 12,
      "name": "Gloomhaven Square B",
      "location": "B-16",
      "new_locations": [16, 18, 28],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.END_OF_THE_INVASION],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.END_OF_THE_INVASION]
    },
    13: {
      "number": 13,
      "name": "Temple of the Seer",
      "location": "N-3",
      "new_locations": [15, 17, 20],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    14: {
      "number": 14,
      "name": "Frozen Hollow",
      "location": "C-10",
      "new_locations": [15, 17, 20],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.THE_POWER_OF_ENHANCEMENT]
    },
    15: {
      "number": 15,
      "name": "Shrine of Strength",
      "location": "B-11",
      "new_locations": [15, 17, 20],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    16: {
      "number": 16,
      "name": "Mountain Pass",
      "location": "B-6",
      "new_locations": [24, 25],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    17: {
      "number": 17,
      "name": "Lost Island",
      "location": "K-17",
      "new_locations": [24, 25],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    18: {
      "number": 18,
      "name": "Abandoned Sewers",
      "location": "C-14",
      "new_locations": [14, 23, 26, 43],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    19: {
      "number": 19,
      "name": "Forgotten Crypt",
      "location": "M-7",
      "new_locations": [27],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [
        GlobalAchievement.THE_POWER_OF_ENHANCEMENT
      ],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.STONEBREAKERS_CENSER],
      "global_achievements": []
    },
    20: {
      "number": 20,
      "name": "Necromancer's Sanctum",
      "location": "H-13",
      "new_locations": [16, 18, 28],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [GlobalAchievement.THE_MERCHANT_FLEES],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    21: {
      "number": 21,
      "name": "Infernal Throne",
      "location": "C-7",
      "new_locations": [],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [
        GlobalAchievement.THE_RIFT_NEUTRALIZED
      ],
      "party_achievements": [],
      //TODO: ADD IN IF AROUND THIS ACHIEVEMENT SINCE IT DEPENDS ON ARTIFACT LOST GLOBAL ACHIEVEMENT
      "global_achievements": [
        GlobalAchievement.THE_RIFT_NEUTRALIZED,
        GlobalAchievement.ARTIFACT_RECOVERED,
      ]
    },
    22: {
      "number": 22,
      "name": "Temple of the Elements",
      "location": "K-8",
      "new_locations": [31, 35, 36],
      //TODO: This party requirement is an or so either one of these needs to be completed
      "party_requirements_complete": [
        PartyAchievement.FOLLOWING_CLUES,
        PartyAchievement.A_DEMONS_ERRAND,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.ARTIFACT_RECOVERED]
    },
    23: {
      "number": 23,
      "name": "Deep Ruins",
      "location": "C-15",
      "new_locations": [],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.THROUGH_THE_RUINS],
      "global_achievements": [GlobalAchievement.ANCIENT_TECHNOLOGY]
    },
    24: {
      "number": 24,
      "name": "Echo Chamber",
      "location": "C-6",
      "new_locations": [30, 32],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.THE_VOICES_COMMAND],
      "global_achievements": []
    },
    25: {
      "number": 25,
      "name": "Icecrag Ascent",
      "location": "A-5",
      "new_locations": [33, 34],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.THE_DRAKES_COMMAND],
      "global_achievements": []
    },
    26: {
      "number": 26,
      "name": "Ancient Cistern",
      "location": "D-15",
      "new_locations": [22],
      //TODO: ANOTHER EITHER/OR SITUATION WITH THE GLOBAL ACHIEVEMENT
      "party_requirements_complete": [PartyAchievement.THROUGH_THE_RUINS],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [GlobalAchievement.WATER_BREATHING],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.FOLLOWING_CLUES],
      "global_achievements": []
    },
    27: {
      "number": 27,
      "name": "Ruinous Rift",
      "location": "E-6",
      "new_locations": [22],
      "party_requirements_complete": [PartyAchievement.STONEBREAKERS_CENSER],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.ARTIFACT_LOST],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.THE_RIFT_NEUTRALIZED]
    },
    28: {
      "number": 28,
      "name": "Outer Ritual Chamber",
      "location": "E-4",
      "new_locations": [29],
      "party_requirements_complete": [PartyAchievement.DARK_BOUNTY],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.AN_INVITATION],
      "global_achievements": []
    },
    29: {
      "number": 29,
      "name": "Sanctuary of Gloom",
      "location": "E-3",
      "new_locations": [],
      "party_requirements_complete": [PartyAchievement.AN_INVITATION],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.THE_EDGE_OF_DARKNESS]
    },
    30: {
      "number": 30,
      "name": "Shrine of the Depths",
      "location": "N-15",
      "new_locations": [42],
      "party_requirements_complete": [PartyAchievement.THE_VOICES_COMMAND],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.THE_SCEPTER_AND_THE_VOICE],
      "global_achievements": []
    },
    31: {
      "number": 31,
      "name": "Plane of Night",
      "location": "A-16",
      "new_locations": [37, 38, 39, 43],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [
        GlobalAchievement.THE_POWER_OF_ENHANCEMENT,
        GlobalAchievement.ARTIFACT_RECOVERED,
      ],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.ARTIFACT_CLEANSED]
    },
    32: {
      "number": 32,
      "name": "Decrepit Wood",
      "location": "I-11",
      "new_locations": [33, 40],
      "party_requirements_complete": [PartyAchievement.THE_VOICES_COMMAND],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    33: {
      "number": 33,
      "name": "Savvas Armory",
      "location": "A-7",
      "new_locations": [],
      //TODO: Another either/or situation
      "party_requirements_complete": [
        PartyAchievement.THE_VOICES_COMMAND,
        PartyAchievement.THE_DRAKES_COMMAND,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [
        PartyAchievement.THE_VOICES_TREASURE,
        PartyAchievement.THE_DRAKES_TREASURE,
      ],
      "global_achievements": []
    },
    34: {
      "number": 34,
      "name": "Scorched Summit",
      "location": "A-4",
      "new_locations": [],
      "party_requirements_complete": [
        PartyAchievement.THE_DRAKES_COMMAND,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.THE_DRAKE_AIDED],
      "party_achievements": [PartyAchievement.THE_DRAKES_COMMAND],
      "global_achievements": [GlobalAchievement.THE_DRAKE_SLAIN]
    },
    35: {
      "number": 35,
      "name": "Gloomhaven Battlements A",
      "location": "A-14",
      "new_locations": [45],
      "party_requirements_complete": [
        PartyAchievement.A_DEMONS_ERRAND,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [
        GlobalAchievement.THE_RIFT_NEUTRALIZED
      ],
      "party_achievements": [PartyAchievement.A_DEMONS_ERRAND],
      "global_achievements": [
        GlobalAchievement.CITY_RULE_DEMONIC,
        GlobalAchievement.ARTIFACT_LOST,
      ]
    },
    36: {
      "number": 36,
      "name": "Gloomhaven Battlements B",
      "location": "B-14",
      "new_locations": [],
      "party_requirements_complete": [
        PartyAchievement.A_DEMONS_ERRAND,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [
        GlobalAchievement.THE_RIFT_NEUTRALIZED
      ],
      "party_achievements": [PartyAchievement.A_DEMONS_ERRAND],
      "global_achievements": [
        GlobalAchievement.ARTIFACT_LOST,
      ]
    },
    37: {
      "number": 37,
      "name": "Doom Trench",
      "location": "G-18",
      "new_locations": [47],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [GlobalAchievement.WATER_BREATHING],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.THROUGH_THE_TRENCH],
      "global_achievements": []
    },
    38: {
      "number": 38,
      "name": "Slave Pens",
      "location": "G-2",
      "new_locations": [44, 48],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.REDTHORNS_AID],
      "global_achievements": []
    },
    39: {
      "number": 39,
      "name": "Treacherous Divide",
      "location": "B-11",
      "new_locations": [15, 46],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [PartyAchievement.ACROSS_THE_DIVIDE],
      "global_achievements": []
    },
    40: {
      "number": 40,
      "name": "Ancient Defense Network",
      "location": "F-12",
      "new_locations": [41],
      "party_requirements_complete": [
        PartyAchievement.THE_VOICES_COMMAND,
        PartyAchievement.THE_VOICES_TREASURE,
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.ANCIENT_TECHNOLOGY]
    },
    41: {
      "number": 41,
      "name": "Timeworm Tomb",
      "location": "F-13",
      "new_locations": [],
      "party_requirements_complete": [PartyAchievement.THE_VOICES_COMMAND],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.THE_VOICE_FREED]
    },
    42: {
      "number": 42,
      "name": "Realm of the Voice",
      "location": "C-5",
      "new_locations": [],
      "party_requirements_complete": [
        PartyAchievement.THE_SCEPTER_AND_THE_VOICE
      ],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [GlobalAchievement.THE_VOICE_FREED],
      "party_achievements": [PartyAchievement.THE_VOICES_COMMAND],
      "global_achievements": [GlobalAchievement.THE_VOICE_SILENCED]
    },
    43: {
      "number": 43,
      "name": "Drake Nest",
      "location": "D-4",
      "new_locations": [],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [
        GlobalAchievement.THE_POWER_OF_ENHANCEMENT
      ],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": [GlobalAchievement.WATER_BREATHING]
    },
    44: {
      "number": 44,
      "name": "Tribal Assault",
      "location": "F-3",
      "new_locations": [],
      "party_requirements_complete": [PartyAchievement.REDTHORNS_AID],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
    45: {
      "number": 45,
      "name": "Rebel Swamp",
      "location": "M-9",
      "new_locations": [49, 50],
      "party_requirements_complete": [],
      "party_requirements_incomplete": [],
      "global_requirements_complete": [GlobalAchievement.CITY_RULE_DEMONIC],
      "global_requirements_incomplete": [],
      "party_achievements": [],
      "global_achievements": []
    },
  };
}
