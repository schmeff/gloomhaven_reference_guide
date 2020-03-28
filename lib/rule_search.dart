import 'package:flutter/material.dart';

class RuleSearch extends StatelessWidget {
  final Function updateSearchResults;

  RuleSearch(this.updateSearchResults);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: TextField(
        cursorColor: Theme.of(context).primaryColor,
        style: TextStyle(
          fontFamily: 'HighTower',
          fontSize: 18,
        ),
        onChanged: (text) {
          return updateSearchResults(text);
        },
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: 'HighTower',
            fontSize: 18,
          ),
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(135, 163, 123, 1),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(135, 163, 123, 1), width: 2),
          ),
        ),
      ),
    );
  }
}
