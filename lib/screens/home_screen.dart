import 'package:flutter/material.dart';
import '../models/jogo.dart';
import '../widgets/menu_lateral.dart';
import 'detalhes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final jogos = [
      Jogo(
        nome: 'Minecraft',
        genero: 'Sandbox',
        ano: 2011,
        descricao: 'Construção e sobrevivência.',
        imagemUrl:
        'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/store/software/switch/70010000000964/a28a81253e919298beab2295e39a56b7a5140ef15abdb56135655e5c221b2a3a',
      ),
      Jogo(
        nome: 'Valorant',
        genero: 'FPS',
        ano: 2020,
        descricao: 'Tiro competitivo.',
        imagemUrl:
        'https://store-images.s-microsoft.com/image/apps.21507.13663857844271189.4c1de202-3961-4c40-a0aa-7f4f1388775a.20ed7782-0eda-4f9d-b421-4cc47492edc6',
      ),
      Jogo(
        nome: 'Stardew Valley',
        genero: 'Simulação',
        ano: 2016,
        descricao: 'Vida na fazenda.',
        imagemUrl:
        'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/413150/capsule_616x353.jpg?t=1754692865g',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,

      // MENU LATERAL COMPARTILHADO
      drawer: const MenuLateral(),

      appBar: AppBar(
        title: const Text("🎮 PlayLog"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "🔥 Destaques",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jogos.length,
              itemBuilder: (context, index) {
                final jogo = jogos[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalhesScreen(jogo: jogo),
                      ),
                    );
                  },
                  child: Container(
                    width: 140,
                    margin: const EdgeInsets.only(right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        jogo.imagemUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.black],
              ),
            ),
            child: const Row(
              children: [
                Icon(Icons.favorite, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Lista de Desejos",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "⭐ Recomendado do dia",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              jogos[0].imagemUrl,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "🎮 Mais aguardados",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          Column(
            children: jogos.map((jogo) {
              return Card(
                color: Colors.grey[900],
                child: ListTile(
                  leading: Image.network(
                    jogo.imagemUrl,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    jogo.nome,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    jogo.genero,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalhesScreen(jogo: jogo),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}