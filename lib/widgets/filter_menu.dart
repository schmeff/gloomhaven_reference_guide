import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scenarios.dart';

import '../enums/filters.dart';

class FilterMenu extends StatefulWidget {
  @override
  _FilterMenuState createState() => _FilterMenuState();
}

class _FilterMenuState extends State<FilterMenu> {
  @override
  Widget build(BuildContext context) {
    Filters currentFilter = Provider.of<Scenarios>(context).currentFilter;
    return PopupMenuButton(
      tooltip: "Show Filters Menu",
      icon: Icon(
        Icons.filter_list,
        color: Colors.black87,
      ),
      onSelected: (Filters selectedFilter) =>
          Provider.of<Scenarios>(context, listen: false)
              .updateCurrentFilter(selectedFilter),
      itemBuilder: (BuildContext context) => <PopupMenuItem<Filters>>[
        PopupMenuItem<Filters>(
          value: Filters.ALL_SCENARIOS,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('All Scenarios'),
              currentFilter == Filters.ALL_SCENARIOS
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                    )
                  : Container(),
            ],
          ),
        ),
        PopupMenuItem<Filters>(
          value: Filters.COMPLETED_SCENARIOS,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Completed Scenarios'),
              currentFilter == Filters.COMPLETED_SCENARIOS
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                    )
                  : Container(),
            ],
          ),
        ),
        PopupMenuItem<Filters>(
          value: Filters.AVAILABLE_SCENARIOS,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Available Scenarios'),
              currentFilter == Filters.AVAILABLE_SCENARIOS
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                    )
                  : Container(),
            ],
          ),
        ),
        PopupMenuItem<Filters>(
          value: Filters.LOCKED_SCENARIOS,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Locked Scenarios'),
              currentFilter == Filters.LOCKED_SCENARIOS
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
