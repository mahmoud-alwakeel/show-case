import 'package:flutter/material.dart';
import 'package:show_case/screens/home_screen.dart';

void main() {
  runApp(const ShowCaseApp());
}

class ShowCaseApp extends StatelessWidget {
  const ShowCaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}