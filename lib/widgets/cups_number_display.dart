import 'package:flutter/material.dart';

class CupsNumberDisplay extends StatelessWidget {
  const CupsNumberDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration:
          const BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
      child: const Center(
        child: Text(
          '7',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
      ),
    );
  }
}
