import 'package:builder/burgerbuilderbase.dart';
import 'package:builder/models/ingredientes/hamburguers/carne.dart';
import 'package:builder/models/ingredientes/molhos/geleia_de_pimenta.dart';
import 'package:builder/models/ingredientes/p%C3%A3es/pao_de_batata.dart';
import 'package:builder/models/ingredientes/queijos/catupiry.dart';
import 'package:builder/models/ingredientes/queijos/queijo_mussarela.dart';
import 'package:builder/models/ingredientes/salada/rucula.dart';

class DoceFogo extends BurgerBuilderBase {
  DoceFogo() {
    price = 15.0;
  }

  @override
  void addBurger() {
    burger.addIngrediente(BurgerCarne());
  }

  @override
  void addComplementos() {}

  @override
  void addMolhos() {
    burger.addIngrediente(GeleiaDePimenta());
  }

  @override
  void addPaes() {
    burger.addIngrediente(PaoDeBatata());
  }

  @override
  void addQueijos() {
    burger.addIngrediente(QueijoMussarela());
    burger.addIngrediente(Catupiry());
  }

  @override
  void addSalada() {
    burger.addIngrediente(Rucula());
  }
}
