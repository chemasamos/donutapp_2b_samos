import "package:flutter/material.dart";

 class DonutTab extends StatelessWidget {

  // Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Picaña Cream","25", Colors.brown,"lib/images/chocolate_donut.png" ],
    ["Garxiola Favorite","900", Colors.pinkAccent,"lib/images/strawberry_donut.png" ],
    ["Wicho Selects","40", Colors.purpleAccent,"lib/images/grape_donut.png" ],
    ["PinkyPromise","30", const Color.fromARGB(255, 239, 169, 222),"lib/images/icecream_donut.png" ],

  ];


  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Elementos de nuestra lista
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(18),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      });
  }
}