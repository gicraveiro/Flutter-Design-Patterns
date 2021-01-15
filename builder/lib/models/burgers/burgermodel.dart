import 'package:builder/models/ingredientes/ingrediente.dart';
//import 'package:flutter/material.dart';

class BurgerModel {
  final List<Ingrediente> _ingredientes = [];
  double _price;

  void addIngrediente(Ingrediente ingrediente) {
    _ingredientes.add(ingrediente);
  }

  String getIngredientes() {
    return _ingredientes.map((x) => x.getName()).join(', ');
  }

  void setPrice(double price) {
    _price = price;
  }

  String getPrice() {
    return '\$${_price.toStringAsFixed(2)}';
  }
}
