import 'package:flutter/material.dart';

class CupsGoal extends StatelessWidget {
  const CupsGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Water intake goal', style: TextStyle(fontSize: 20),),
        SizedBox(height: 20,),
        Wrap(
          runSpacing: 10,
          children: [
            for(int i = 1; i<= 2; i++) 
            Icon(Icons.local_drink, color: Colors.indigo, size: 30,),
            for(int i = 1; i<= 5; i++)
            Icon(Icons.local_drink, size: 30,),
          ],
        )
      ],
    );
  }
}