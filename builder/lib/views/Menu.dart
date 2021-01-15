import 'package:builder/burgerbuilderbase.dart';
import 'package:builder/models/burgers/CarameladoCrocante.dart';
import 'package:builder/models/burgers/DoceFogo.dart';
import 'package:builder/models/burgers/TropicalTemperado.dart';
import 'package:builder/models/burgers/burgermodel.dart';
import 'package:flutter/material.dart';

import '../burgermaker.dart';
import 'IngredientesMenu.dart';

class MenuItem {
  String label;
  BurgerBuilderBase burgerBuilder;

  MenuItem({
    @required this.label,
    @required this.burgerBuilder,
  })  : assert(label != null),
        assert(burgerBuilder != null);
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<MenuItem> menu = [];
  final BurgerMaker _burgerMaker = BurgerMaker(CarameladoCrocante());

  BurgerModel selectedBurger;
  MenuItem _selectedMenuBurger;

  @override
  void initState() {
    super.initState();

    menu.addAll([
      MenuItem(
        label: 'Caramelado Crocante',
        burgerBuilder: CarameladoCrocante(),
      ),
      MenuItem(
        label: 'Doce Fogo',
        burgerBuilder: DoceFogo(),
      ),
      MenuItem(
        label: 'Tropical Temperado',
        burgerBuilder: TropicalTemperado(),
      )
    ]);

    _selectedMenuBurger = menu[0];
    burgerChange(_selectedMenuBurger);
  }

  BurgerModel prepareBurger() {
    _burgerMaker.prepareBurger();

    return _burgerMaker.getBurger();
  }

  void burgerChange(MenuItem value) {
    setState(() {
      _selectedMenuBurger = value;

      _burgerMaker.changeBurgerBuilder(value.burgerBuilder);

      selectedBurger = prepareBurger();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<MenuItem>(
          value: _selectedMenuBurger,
          icon: Image.asset(
            "assets/burger.png",
            //height: 15,
            //width: 34,
          ),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          items: menu
              .map<DropdownMenuItem<MenuItem>>(
                (MenuItem burger) => DropdownMenuItem<MenuItem>(
                  value: burger,
                  child: Text(burger.label),
                ),
              )
              .toList(),
          onChanged: burgerChange,
        ),
        IngredientesMenu(burger: selectedBurger),
      ],
    );
  }
}
