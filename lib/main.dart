import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const CatalogoJogosApp());
}

class CatalogoJogosApp extends StatelessWidget {
  const CatalogoJogosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}