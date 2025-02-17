import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //Ruta del archivo
  //C:\Users\Usuario\Documents\GitHub\4SA\Flutter\donut_app_4sa\assets\icons\donut_icon.png
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          //Borde redondeado
          borderRadius: BorderRadius.circular(16),
        ),
        //ruta del archivo
        child: Image.asset(iconPath, 
        color: Colors.grey[600],
        ),
      ),
    );
  }
}