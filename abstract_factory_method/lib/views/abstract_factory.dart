import 'package:flutter/material.dart';

import 'package:abstract_factory_method/controller.dart';
import 'package:abstract_factory_method/models/MaterialWidgetsFactory.dart';
import 'package:abstract_factory_method/models/iosWidgetsFactory.dart';
import 'package:abstract_factory_method/models/IWidgets.dart';

class AbstractFactory extends StatefulWidget {
  @override
  _AbstractFactoryState createState() => _AbstractFactoryState();
}

class _AbstractFactoryState extends State<AbstractFactory> {
  final List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  int _selectedFactoryIndex = 0;

  IActivityIndicator _activityIndicator;

  ISlider _slider;
  double _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);

  ISwitch _switch;
  bool _switchValue = false;
  String get _switchValueString => _switchValue ? 'ON' : 'OFF';

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  void _createWidgets() {
    _activityIndicator =
        widgetsFactoryList[_selectedFactoryIndex].createActivityIndicator();
    _slider = widgetsFactoryList[_selectedFactoryIndex].createSlider();
    _switch = widgetsFactoryList[_selectedFactoryIndex].createSwitch();
  }

  void _setSelectedFactoryIndex(int index) {
    setState(() {
      _selectedFactoryIndex = index;
      _createWidgets();
    });
  }

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _setSwitchValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            FactorySelection(
              widgetsFactoryList: widgetsFactoryList,
              selectedIndex: _selectedFactoryIndex,
              onChanged: _setSelectedFactoryIndex,
            ),
            const SizedBox(height: 100.0),
            Text(
              'Demonstração de Widgets',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20.0),
            Text(
              'Process indicator',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 20.0),
            _activityIndicator.render(),
            const SizedBox(height: 30.0),
            Text(
              'Slider ($_sliderValueString%)',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            _slider.render(_sliderValue, _setSliderValue),
            const SizedBox(height: 20.0),
            Text(
              'Switch ($_switchValueString)',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            _switch.render(_switchValue, _setSwitchValue),
          ],
        ),
      ),
    );
  }
}
