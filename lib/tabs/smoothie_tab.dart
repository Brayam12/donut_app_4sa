import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Fresa","Good Tea", "57", Colors.red, "lib/images/Smothie_1.png"],
    ["Sandia","Panda", "60", Colors.blue, "lib/images/Smothie_2.png"],
    ["Jugo Verde","Vitology", "70", Colors.green, "lib/images/Smothie_3.png"],
    ["Moras","Juice Bar", "76", Colors.brown, "lib/images/Smothie_4.png"],
    ["Mango","Oasis Frutal", "50", Colors.pink, "lib/images/Smothie_5.png"],
    ["Chocolate","Smothies Tec", "40", Colors.amber, "lib/images/Smothie_6.png"],
    ["Platano","Savia", "49", Colors.purple, "lib/images/Smothie_7.png"],
    ["Vainilla","Smothies Cesar", "45", Colors.cyan, "lib/images/Smothie_8.png"],
  ];


  
  SmoothieTab({super.key});

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