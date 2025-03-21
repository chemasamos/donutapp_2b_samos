import "package:donutapp_2b_samos/utils/donut_tile.dart";
import "package:flutter/material.dart";

class DonutTab extends StatelessWidget {
  final Function(double) onAdd; // Recibe la función onAdd

  final List donutOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Gaxiola Favorit","Kukis","36",Colors.pinkAccent, "lib/images/icecream_donut.png"],
    ["WichoPie","Colom","40",Colors.purpleAccent,  "lib/images/strawberry_donut.png"],
    ["Jagger", "Pollo Brujo","700",Colors.purple, "lib/images/grape_donut.png"],
    ["Bacardi","Mixe","95",Colors.brown, "lib/images/chocolate_donut.png"],
    ["katita","kitis y algo mas","100",Colors.pink, "lib/images/kat_donut.png"],
    ["kitilibum","kitis y algo mas","401",Colors.deepPurple,  "lib/images/kiti_donut.png"],
    ["dononon", "seth roguen","700",Colors.cyan, "lib/images/guap_donut.png"],
    ["allinone","cocina economica","95",Colors.orange, "lib/images/spagueti_donut.png"],
  ];
DonutTab({super.key, required this.onAdd}); // Añade onAdd al constructor

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: const EdgeInsets.all(7.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas
        childAspectRatio: 1 / 1.5, // Relación de aspecto
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutStore: donutOnSale[index][1],
          donutPrice: donutOnSale[index][2],
          donutColor: donutOnSale[index][3],
          imageName: donutOnSale[index][4],
          onAdd: () => onAdd(double.parse(donutOnSale[index][2])), // Pasa onAdd con el precio
        );
      },
    );
  }
}