
import 'package:flutter/material.dart';
import 'package:flutter_application_1/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData.dark(), 
      home: const StartScreen(), 
    );
  }
}

  Widget buildIconWithBorder(IconData icon) {
  return Container(
    width: 30, // Breite des Kreises
    height: 30, // Höhe des Kreises
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white70, // Farbe des Rahmens
        width: 1.5, // Breite des Rahmens
      ),
    ),
    child: Icon(
      icon,
      color: Colors.white70, // Farbe des Icons
      size: 16,
    ),
  );
}







