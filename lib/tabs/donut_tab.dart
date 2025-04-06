import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAdd;
  //list of donuts
  DonutTab({super.key, required this.onAdd});
    final List<List<dynamic>> donutsOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Fresa","Krispy Kreeme", "36", Colors.red, "lib/images/Dona_1.png"],
    ["Helado","Dunkin's", "45", Colors.blue, "lib/images/Dona_2.png"],
    ["Chocomenta","Donut Tec", "84", Colors.green, "lib/images/Dona_3.png"],
    ["Chocolate","Rafa Donut's", "95", Colors.brown, "lib/images/Dona_4.png"],
    ["Chispas","Tim Hortons", "60", Colors.pink, "lib/images/Dona_5.png"],
    ["Integral","Mister Donut", "25", Colors.amber, "lib/images/Dona_6.png"],
    ["Glaseado","La esperanza", "53", Colors.purple, "lib/images/Dona_7.png"],
    ["Rellena","Tere Cazola", "88", Colors.cyan, "lib/images/Dona_8.png"],
  ];


  

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
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: onAdd,
          

        );

      }
    );
  }
}