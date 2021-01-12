import 'package:abstract_factory_method/models/IWidgets.dart';

import 'iosActivityIndicator.dart';
import 'iosSlider.dart';
import 'iosSwitch.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  String getTitle() {
    return 'iOS widgets';
  }

  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }
}
