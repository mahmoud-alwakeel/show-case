import 'package:flutter/material.dart';
import 'package:show_case/widgets/cups_number_display.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water tracker'),
      ),
      body: const Center(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.remove),
                CupsNumberDisplay(),
                Icon(Icons.add),
              ],
            ),
            Text("Adjust you water intake goal"),
          ],
        ),
      ),
    );
  }
}