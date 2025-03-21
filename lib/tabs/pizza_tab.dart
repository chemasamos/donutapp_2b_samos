import "package:donutapp_2b_samos/utils/pizza_tile.dart";
import "package:flutter/material.dart";

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd;

  final List pizzaOnSale = [
    // [pizzaFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName]
    ["Anchovies", "Pizza Hut", "36", Colors.red, "lib/images/anchoas_pizza.png"],
    ["Shrimp", "Messinas", "54", Colors.yellow,  "lib/images/camarones_pizza.png"],
    ["Mushroom", "Costco", "84", Colors.brown, "lib/images/champiñon_pizza.png"],
    ["Pepperoni", "Domino's", "95", Colors.purple, "lib/images/peperoni_pizza.png"],
    ["Peppers", "Pizza y corre", "36", Colors.green, "lib/images/pimiento_pizza.png"],
    ["Salami", "Sanetis", "84", Colors.brown, "lib/images/salami_pizza.png"],
    ["Pineapple", "Superpizza", "54", Colors.yellow,  "lib/images/piña_pizza.png"],
    ["Sausage", "Baleros", "95", Colors.red, "lib/images/salchicha_pizza.png"],

  ];

  PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(7.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
          onAdd: () => onAdd(double.parse(pizzaOnSale[index][2])),
        );
      },
    );
  }
}