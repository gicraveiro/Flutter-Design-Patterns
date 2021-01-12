import 'package:abstract_factory_method/models/IWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AndroidSlider implements ISlider {
  @override
  Widget render(double value, ValueSetter<double> onChanged) {
    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.grey,
      min: 0.0,
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}
