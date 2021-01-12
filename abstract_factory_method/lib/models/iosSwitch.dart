import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'IWidgets.dart';

class IosSwitch implements ISwitch {
  @override
  Widget render(bool value, ValueSetter<bool> onChanged) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.black,
    );
  }
}
