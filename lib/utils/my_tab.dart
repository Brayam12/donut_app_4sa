import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label; 

  const MyTab({
    super.key, 
    required this.iconPath, 
    required this.label, 
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              iconPath, 
              color: Colors.grey[600],
              height: 30, 
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label, 
            style: TextStyle(fontSize: 10, color: Colors.grey[600]), 
          ),
        ],
      ),
    );
  }
}