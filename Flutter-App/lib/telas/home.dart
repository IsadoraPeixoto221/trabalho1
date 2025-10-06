import 'package:flutter/material.dart';
import '../modelos/produto.dart';
import 'inicio.dart';
import 'produtos.dart';
import 'favoritos.dart';
import 'sobre.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceAtual = 0;
  late List<Produto> produtos;

  @override
  void initState() {
    super.initState();
    // Clona a lista inicial
    produtos = listaProdutos
        .map((p) => Produto(
              id: p.id,
              nome: p.nome,
              descricao: p.descricao,
              preco: p.preco,
              imagemUrl: p.imagemUrl,
              favorito: p.favorito,
            ))
        .toList();
  }

  void alternarFavorito(Produto p) {
    setState(() {
      p.favorito = !p.favorito;
    });
  }

  void _sair() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final paginas = [
      const InicioPage(),
      ProdutosPage(produtos: produtos, onAlternarFavorito: alternarFavorito),
      FavoritosPage(
        favoritos: produtos.where((p) => p.favorito).toList(),
        onAlternarFavorito: alternarFavorito,
      ),
      const SobrePage(),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Loja SLI Geek')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              onTap: () {
                setState(() => indiceAtual = 0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.inventory_2),
              title: const Text('Produtos'),
              onTap: () {
                setState(() => indiceAtual = 1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favoritos'),
              onTap: () {
                setState(() => indiceAtual = 2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Sobre'),
              onTap: () {
                setState(() => indiceAtual = 3);
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: _sair,
            ),
          ],
        ),
      ),
      body: paginas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // mantém tudo alinhado
        backgroundColor: Colors.white,
        elevation: 8,
        selectedItemColor: Color(0xff077516),
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: indiceAtual,
        onTap: (i) => setState(() => indiceAtual = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2), label: 'Produtos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
        ],
      ),
    );
  }
}
