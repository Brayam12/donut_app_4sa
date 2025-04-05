import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Sencillos","Pancakes Tec", "35", Colors.red, "lib/images/Pancakes_1.png"],
    ["Fresa","Casa del Pancake", "42", Colors.blue, "lib/images/Pancakes_2.png"],
    ["Frutos Rojos","La Crêpe & Pancake", "120", Colors.green, "lib/images/Pancakes_3.png"],
    ["Crepa","Santa Crepa", "50", Colors.brown, "lib/images/Pancakes_4.png"],
    ["Mantequila","Desayuno Feliz", "55", Colors.pink, "lib/images/Pancakes_5.png"],
    ["Chocolate","PancakeLicious", "37", Colors.amber, "lib/images/Pancakes_6.png"],
    ["Frambuesa","Señor Pancake", "64", Colors.purple, "lib/images/Pancakes_7.png"],
    ["Platano","Flip It", "53", Colors.cyan, "lib/images/Pancakes_8.png"],
  ];


  
  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: Como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Proporción entre ancho y alto
        childAspectRatio: 1/1.5), 
      //¿Cuántos elementos va a tener?
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //¿Qué elemento se construira?
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          

        );

      }
    );
  }
}