//import 'package:builder/models/burgers/bugermodel.dart';
import 'package:builder/models/ingredientes/bacon.dart';
import 'package:builder/models/ingredientes/cebola_caramelizada.dart';
import 'package:builder/models/ingredientes/hamburguers/carne.dart';
import 'package:builder/models/ingredientes/p%C3%A3es/pao_australiano.dart';
import 'package:builder/models/ingredientes/queijos/queijo_mussarela.dart';

import '../burgerbuilderbase.dart';

class CarameladoCrocante extends BurgerBuilderBase {
  CarameladoCrocante() {
    price = 10.0;
  }

  @override
  void addPaes() {
    burger.addIngrediente(PaoAustraliano());
  }

  @override
  void addBurger() {
    burger.addIngrediente(BurgerCarne());
  }

  @override
  void addQueijos() {
    burger.addIngrediente(QueijoMussarela());
  }

  @override
  void addComplementos() {
    burger.addIngrediente(CebolaCaramelizada());
    burger.addIngrediente(Bacon());
  }

  @override
  void addMolhos() {}

  @override
  void addSalada() {}
}
