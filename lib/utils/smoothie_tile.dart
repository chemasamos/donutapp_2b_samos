import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothieStore;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String imageName;
  const SmoothieTile 
  ({super.key, required this.smoothieFlavor,required this.smoothieStore, required this.smoothiePrice, this.smoothieColor, required this.imageName,});

  @override
  Widget build(BuildContext context) {  
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[100], 
          borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //PriceTag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24))),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                    child: Text('\$$smoothiePrice',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: smoothieColor[800])),
                ),
              ],
              ),
            //SmoothiePic
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 34),
              child: Image.asset(imageName)),
            //SmoothieText
            Text(smoothieFlavor,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20)),

            const SizedBox(
              height: 4,
            ),
            //Agregar el texto de la tienda
            Text(smoothieStore,
            style: TextStyle(
            fontSize: 17)),
            //LoveIconAddButton
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border,
                  color: Colors.black,
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                    ),
                ],
              ),
            )
        ],
        ),
      ),
    );
  }
}