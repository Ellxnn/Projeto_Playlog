import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text('Sobre'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      drawer: const MenuLateral(),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sports_esports,
                color: Colors.deepPurple,
                size: 80,
              ),

              SizedBox(height: 20),

              Text(
                '🎮 PlayLog',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Projeto acadêmico desenvolvido com Flutter e Dart.\n\n'
                    'O aplicativo permite visualizar um catálogo de jogos, acessar detalhes dos títulos e navegar entre telas através do menu lateral.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 30),

              Text(
                'Versão 1.0',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}