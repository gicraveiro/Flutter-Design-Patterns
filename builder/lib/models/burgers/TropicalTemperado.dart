import 'package:builder/models/ingredientes/abacaxi.dart';
import 'package:builder/models/ingredientes/hamburguers/falafel.dart';
import 'package:builder/models/ingredientes/molhos/maionese.dart';
import 'package:builder/models/ingredientes/p%C3%A3es/pao_brioche.dart';
import 'package:builder/models/ingredientes/queijos/queijo_mussarela.dart';
import 'package:builder/models/ingredientes/salada/alface.dart';
import 'package:builder/models/ingredientes/salada/rucula.dart';

import '../burgerbuilderbase.dart';

class TropicalTemperado extends BurgerBuilderBase {
  TropicalTemperado() {
    price = 10.0;
  }

  @override
  void addBurger() {
    burger.addIngrediente(BurgerFalafel());
  }

  @override
  void addComplementos() {
    burger.addIngrediente(Abacaxi());
  }

  @override
  void addMolhos() {
    burger.addIngrediente(Maionese());
  }

  @override
  void addPaes() {
    burger.addIngrediente(PaoBrioche());
  }

  @override
  void addQueijos() {
    burger.addIngrediente(QueijoMussarela());
  }

  @override
  void addSalada() {
    burger.addIngrediente(Alface());
    burger.addIngrediente(Rucula());
  }
}
