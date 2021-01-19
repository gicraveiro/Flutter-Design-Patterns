import '../models/burgerbuilderbase.dart';
import '../models/burgermodel.dart';

class BurgerMaker {
  BurgerBuilderBase burgerBuilder;

  BurgerMaker(this.burgerBuilder);

  void changeBurgerBuilder(BurgerBuilderBase burgerBuilder) {
    this.burgerBuilder = burgerBuilder;
  }

  BurgerModel getBurger() {
    return burgerBuilder.getBurger();
  }

  prepareBurger() {
    burgerBuilder.createBurger();
    burgerBuilder.setBurgerPrice();

    burgerBuilder.addPaes();
    burgerBuilder.addBurger();
    burgerBuilder.addQueijos();
    burgerBuilder.addSalada();
    burgerBuilder.addMolhos();
    burgerBuilder.addComplementos();
  }
}
