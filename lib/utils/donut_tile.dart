import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  //dynamic porque sera de tipo Color
  final dynamic donutColor;
  final String imageName;

  final dynamic donutStore;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutStore,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: donutColor[100],
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                  topRight: Radius.circular(24)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                "\$$donutPrice",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: donutColor[800],
                )
                ),
              ),
              
            ],
          ),
          //Donut price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),

              //Donut flavor text
              Text(donutFlavor, style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                color: donutColor[800],
              ),),

              Text(donutStore, style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                color: donutColor[300],
              ),),

              //Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: donutColor[800], size: MediaQuery.of(context).size.width * 0.08,)),
                  TextButton(onPressed: (){}, child: Text("Add", style: TextStyle(
                    color: donutColor[800], 
                    fontSize: MediaQuery.of(context).size.width * 0.045, 
                    decoration: TextDecoration.underline,
                    decorationColor: donutColor[800], 
                    fontWeight: FontWeight.w900
                  ),
                  ),
                  ),
                ],
              ),
          
        ],),
      ),
    );
  }
}
