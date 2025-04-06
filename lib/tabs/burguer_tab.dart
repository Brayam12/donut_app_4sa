import 'package:donut_app_4sa/utils/burguer_tile.dart';
import 'package:flutter/material.dart';

class BurguerTab extends StatelessWidget {
  final Function(double) onAdd;
  //list of donuts
  final List burguersOnsale = [
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


  
 BurguerTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Proporcion entre ancho y alto 
        childAspectRatio: 1/1.6),
      //Cuantos elementos 
      itemCount: 8,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return BurguerTile(
          burguerFlavor : burguersOnsale[index][0],
          burguerStore: burguersOnsale[index][1],
          burguerPrice : burguersOnsale[index][2],
          burguerColor : burguersOnsale[index][3],
          imageName : burguersOnsale[index][4],
          onAdd: onAdd
          
        );
      }
    );
  }
}