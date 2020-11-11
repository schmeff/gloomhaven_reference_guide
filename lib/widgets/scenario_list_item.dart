import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './scenario_status_icon.dart';
import './scenario_button_group.dart';

import '../classes/scenario.dart';

import '../providers/scenarios.dart';

class ScenarioListItem extends StatefulWidget {
  final Scenario _scenario;

  ScenarioListItem(this._scenario);

  @override
  _ScenarioListItemState createState() => _ScenarioListItemState();
}

class _ScenarioListItemState extends State<ScenarioListItem>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeOutTween =
      CurveTween(curve: Curves.easeOut);
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);

  AnimationController _controller;
  Animation<double> _heightFactor;

  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 250), vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _toggleExpanded() {
    setState(() {
      this._expanded = !this._expanded;
      if (this._expanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
    });
  }

  _completeScenario() {
    Provider.of<Scenarios>(context, listen: false)
        .completeScenario(widget._scenario);
  }

  Widget _buildListItem(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          color: Colors.white54,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                onTap: () => this._toggleExpanded(),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ScenarioStatusIcon(
                        widget._scenario.available, widget._scenario.completed),
                  ],
                ),
                title: Text(
                  '${widget._scenario.number.toString()} - ${widget._scenario.name}',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PirataOne',
                  ),
                ),
                subtitle: Text(
                  '${widget._scenario.mapLocation}',
                  style: TextStyle(
                    fontFamily: 'PirataOne',
                  ),
                ),
              ),
              ClipRect(
                child: Align(
                  heightFactor: _heightFactor.value,
                  child: Column(
                    children: this._buildChildren(),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Widget> _buildChildren() {
    return <Widget>[
      ScenarioButtonGroup(
        this._completeScenario,
        widget._scenario.available,
        widget._scenario.completed,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !this._expanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildListItem,
      child: closed
          ? null
          : Column(
              children: this._buildChildren(),
            ),
    );
  }
}
