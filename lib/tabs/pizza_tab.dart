import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd;
  //list of donuts

  final List pizzaOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Champiñon","Pizza Hut", "115", Colors.red, "lib/images/Pizza_1.png"],
    ["Hawaiana","Domino's", "120", Colors.blue, "lib/images/Pizza_2.png"],
    ["Queso","El Coliseo", "99", Colors.green, "lib/images/Pizza_3.png"],
    ["Peperoni","Little Caesars", "119", Colors.brown, "lib/images/Pizza_4.png"],
    ["Mexicana","Ajedrez", "135", Colors.pink, "lib/images/Pizza_5.png"],
    ["Pastor","La Parrilla", "197", Colors.amber, "lib/images/Pizza_6.png"],
    ["Mitad y Mitad","Dino's", "139", Colors.purple, "lib/images/Pizza_7.png"],
    ["Vegetariana","Messina's", "110", Colors.cyan, "lib/images/Pizza_8.png"],
  ];


  
  PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: Como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Proporción entre ancho y alto
        childAspectRatio: 1/1.6), 
      //¿Cuántos elementos va a tener?
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //¿Qué elemento se construira?
      itemBuilder: (context, index){
        return PizzaTile(
          pizzaFlavor : pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice : pizzaOnSale[index][2],
          pizzaColor : pizzaOnSale[index][3],
          imageName : pizzaOnSale[index][4],
          onAdd: onAdd,
          

        );

      }
    );
  }
}