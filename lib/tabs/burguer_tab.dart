import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurguerTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Doble Carne","Karl's jr", "109", Colors.red, "lib/images/Burguer_1.png"],
    ["CangreBurguer","Crusaceo Cascarudo", "90", Colors.blue, "lib/images/Burguer_2.png"],
    ["Combo Burguer","McDonald's", "120", Colors.green, "lib/images/Burguer_3.png"],
    ["Sencilla","Burguer King", "78", Colors.brown, "lib/images/Burguer_4.png"],
    ["Chiken Burguer","KFC", "85", Colors.pink, "lib/images/Burguer_5.png"],
    ["Triple Carne","Kung Fu Burguer", "95", Colors.amber, "lib/images/Burguer_6.png"],
    ["AbomiBurguer","Frank's Burguer", "38", Colors.purple, "lib/images/Burguer_7.png"],
    ["Tec Burger","Burguer Tec", "95", Colors.cyan, "lib/images/Burguer_8.png"],
  ];


  
  BurguerTab({super.key});

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