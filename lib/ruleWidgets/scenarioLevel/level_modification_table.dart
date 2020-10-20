import 'package:flutter/material.dart';

class LevelModificationTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            'Difficulty',
            style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
          ),
        ),
        DataColumn(
          label: Text(
            'Level modification',
            style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
          ),
        ),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(
              Text(
                'Easy',
                style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '-1',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Normal',
                style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
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
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Hard',
                style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '+1',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                'Very Hard',
                style: TextStyle(fontFamily: 'HighTower', fontSize: 18),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '+2',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
