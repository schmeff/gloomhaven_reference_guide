import 'package:flutter/material.dart';

class ScenarioLevelTable extends StatelessWidget {
  static const levelData = [
    {
      'scenarioLevel': 0,
      'monsterLevel': 1,
      'goldConversion': 2,
      'trapDamage': 3,
      'bonusExperience': 4
    },
    {
      'scenarioLevel': 1,
      'monsterLevel': 2,
      'goldConversion': 2,
      'trapDamage': 4,
      'bonusExperience': 6
    },
    {
      'scenarioLevel': 2,
      'monsterLevel': 3,
      'goldConversion': 3,
      'trapDamage': 5,
      'bonusExperience': 8
    },
    {
      'scenarioLevel': 3,
      'monsterLevel': 4,
      'goldConversion': 3,
      'trapDamage': 6,
      'bonusExperience': 10
    },
    {
      'scenarioLevel': 4,
      'monsterLevel': 5,
      'goldConversion': 4,
      'trapDamage': 7,
      'bonusExperience': 12
    },
    {
      'scenarioLevel': 5,
      'monsterLevel': 6,
      'goldConversion': 4,
      'trapDamage': 8,
      'bonusExperience': 14
    },
    {
      'scenarioLevel': 6,
      'monsterLevel': 7,
      'goldConversion': 5,
      'trapDamage': 9,
      'bonusExperience': 16
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'Scenario level',
              style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
            ),
          ),
          DataColumn(
            label: Text(
              'Monster level',
              style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
            ),
          ),
          DataColumn(
            label: Text(
              'Gold conversion',
              style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
            ),
          ),
          DataColumn(
            label: Text(
              'Trap damage',
              style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
            ),
          ),
          DataColumn(
            label: Text(
              'Bonus experince',
              style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '10',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '12',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '14',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '16',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    '18',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
