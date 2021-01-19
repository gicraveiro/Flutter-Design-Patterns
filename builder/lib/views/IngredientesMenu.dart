import 'package:builder/models/burgers/burgermodel.dart';
import 'package:flutter/material.dart';

class IngredientesMenu extends StatelessWidget {
  final BurgerModel burger;

  const IngredientesMenu({
    @required this.burger,
  }) : assert(burger != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              'Ingredientes',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              burger.getIngredientes(),
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 50),
            Text(
              'Preço',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              burger.getPrice(),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
