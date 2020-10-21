import 'package:flutter/material.dart';

import '../widgets/rules_list.dart';
import '../widgets/scenarios_list.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/mainScreen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  _updateSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(_selectedIndex == 0 ? "Gloomhaven Rules" : "Scenario Tracker"),
      ),
      body: _selectedIndex == 0 ? RulesList() : ScenariosList(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Rules'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Scenario Tracker'),
          ),
        ],
        selectedItemColor: Colors.black87,
        unselectedItemColor: Color.fromRGBO(135, 163, 123, 1),
        currentIndex: _selectedIndex,
        onTap: _updateSelectedIndex,
      ),
    );
  }
}
