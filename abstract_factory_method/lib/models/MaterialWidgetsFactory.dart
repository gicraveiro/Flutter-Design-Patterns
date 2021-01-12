import 'package:abstract_factory_method/models/IWidgets.dart';

import 'AndroidSwitch.dart';
import 'androidSlider.dart';
import 'androidActivityIndicator.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  String getTitle() {
    return 'Android widgets';
  }

  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }
}
