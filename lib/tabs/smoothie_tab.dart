import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd;
  //list of donuts

  final List smoothieOnSale = [
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


  
  SmoothieTab({super.key, required this.onAdd});

   @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale[index][1],
          smoothiePrice: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
          onAdd: onAdd,  // Pasar la función de agregar al carrito
        );
      }
    );
  }
}

