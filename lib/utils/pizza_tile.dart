import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaStore;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;
  const PizzaTile 
  ({super.key, required this.pizzaFlavor,required this.pizzaStore, required this.pizzaPrice, this.pizzaColor, required this.imageName,});

  @override
  Widget build(BuildContext context) {  
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[100], 
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
                    color: pizzaColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24))),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text('\$$pizzaPrice',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: pizzaColor[800])),
                ),
              ],
              ),
            //PizzaPic
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName)),
            //PizzaText
            Text(pizzaFlavor,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20)),

            const SizedBox(
              height: 4,
            ),
            //Agregar el texto de la tienda
            Text(pizzaStore,
            style: TextStyle(
            fontSize: 17)),
            //LoveIconAddButton
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border,
                  color: Colors.black,
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 15,
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
