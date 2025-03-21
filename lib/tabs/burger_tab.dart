import "package:donutapp_2b_samos/utils/burger_tile.dart";
import "package:flutter/material.dart";

 class BurgerTab extends StatelessWidget {


  final List burgerOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["The Classic", "Grill House", "40", Colors.green, "lib/images/classic_burger.png"],
    ["The Special", "Flame Burger", "50", Colors.orange, "lib/images/special_burger.png"],
    ["Double Flavor", "Stacked Buns", "90", Colors.cyan, "lib/images/doublefLavor_Burger.png"],
    ["The Gourmet", "Prime Bites", "100", Colors.teal, "lib/images/gourmet_burger.png"],
    ["Supreme Delight", "Grill House", "38", Colors.pink, "lib/images/supreme_burger.png"],
    ["Roger Classic", "Flame Burger", "48", Colors.yellow, "lib/images/roger_burger.png"],
    ["Alan Classic", "Stacked Buns", "88", Colors.indigo, "lib/images/alan_burger.png"],
    ["Chilli Spicy", "Prime Bites", "80", Colors.lime, "lib/images/spicy_burger.png"]
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(7.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerStore: burgerOnSale[index][1],
          burgerPrice: burgerOnSale[index][2],
          burgerColor: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
        );
      },
    );
  }
}
