import 'package:flutter/material.dart';
import '../modelos/produto.dart';

class FavoritosPage extends StatelessWidget {
  final List<Produto> favoritos;
  final void Function(Produto) onAlternarFavorito;

  const FavoritosPage({
    super.key,
    required this.favoritos,
    required this.onAlternarFavorito,
  });

  @override
  Widget build(BuildContext context) {
    if (favoritos.isEmpty) {
      return const Center(
        child: Text('Nenhum produto favorito ainda.'),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: favoritos.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final p = favoritos[index];
        return Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                p.imagemUrl,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(p.nome),
            subtitle: Text('R\$ ${p.preco.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: () => onAlternarFavorito(p),
              tooltip: 'Remover dos favoritos',
            ),
          ),
        );
      },
    );
  }
}
