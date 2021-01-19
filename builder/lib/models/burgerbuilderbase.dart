import 'package:flutter/material.dart';

import 'burgermodel.dart';

abstract class BurgerBuilderBase {
  @protected
  BurgerModel burger;
  @protected
  double price;

  void createBurger() {
    burger = BurgerModel();
  }

  BurgerModel getBurger() {
    return burger;
  }

  void setBurgerPrice() {
    burger.setPrice(price);
  }

  void addQueijos();
  void addSalada();
  void addPaes();
  void addBurger();
  void addMolhos();
  void addComplementos();
}
