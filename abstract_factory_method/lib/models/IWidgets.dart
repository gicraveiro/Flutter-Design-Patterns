import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}

abstract class IActivityIndicator {
  Widget render();
}

abstract class ISlider {
  Widget render(double value, ValueSetter<double> onChanged);
}

abstract class ISwitch {
  Widget render(bool value, ValueSetter<bool> onChanged);
}
