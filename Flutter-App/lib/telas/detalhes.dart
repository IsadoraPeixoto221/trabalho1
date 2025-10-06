import 'package:flutter/material.dart';
import '../modelos/produto.dart';

class DetalhesPage extends StatefulWidget {
  final Produto produto;
  final VoidCallback onAlternarFavorito;

  const DetalhesPage({
    super.key,
    required this.produto,
    required this.onAlternarFavorito,
  });

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    final p = widget.produto;

    return Scaffold(
      appBar: AppBar(title: Text(p.nome)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                p.imagemUrl,
                height: 220,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(
                    height: 220,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
                errorBuilder: (_, __, ___) => Container(
                  height: 220,
                  alignment: Alignment.center,
                  child: const Icon(Icons.broken_image, size: 64),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              p.nome,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'R\$ ${p.preco.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(p.descricao),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                widget.onAlternarFavorito();
                setState(() {});
              },
              icon: Icon(p.favorito ? Icons.favorite : Icons.favorite_border),
              label: Text(
                p.favorito
                    ? 'Remover dos Favoritos'
                    : 'Adicionar aos Favoritos',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
