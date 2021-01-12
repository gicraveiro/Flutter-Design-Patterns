import 'package:flutter/cupertino.dart';

import 'IWidgets.dart';

class IosActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return CupertinoActivityIndicator();
  }
}
