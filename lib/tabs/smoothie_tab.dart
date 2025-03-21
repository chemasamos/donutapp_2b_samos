import "package:donutapp_2b_samos/utils/smoothie_tile.dart";
import "package:flutter/material.dart";

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd;

  final List smoothieOnSale = [
    // [smoothieFlavor, smoothieStore, smoothiePrice, smoothieColor, imageName]
    ["Cherry", "Starbucks", "36", Colors.red, "lib/images/cereza_smoothie.png"],
    ["Coconut", "Bombuté", "54", Colors.brown,  "lib/images/coco_smoothie.png"],
    ["Lemon", "Bova Tea", "84", Colors.green, "lib/images/limon_smoothie.png"],
    ["Apple", "TaBoo", "95", Colors.red, "lib/images/manzana_smoothie.png"],
    ["Melon", "POP Tea", "36", Colors.pink, "lib/images/melon_smoothie.png"],
    ["Orange", "Gong Cha", "54", Colors.orange,  "lib/images/naranja_smoothie.png"],
    ["Banana", "Tapioca Flavors", "84", Colors.yellow, "lib/images/platano_smoothie.png"],
    ["Eggplant", "Bubbaplop", "95", Colors.purple, "lib/images/berenjena_smoothie.png"],

  ];

  SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(7.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale[index][1],
          smoothiePrice: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
          onAdd: () => onAdd(double.parse(smoothieOnSale[index][2])),
        );
      },
    );
  }
}