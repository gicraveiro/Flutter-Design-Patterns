import 'package:flutter/widgets.dart';

abstract class Ingrediente {
  @protected
  String name;

  String getName() {
    return name;
  }
}
