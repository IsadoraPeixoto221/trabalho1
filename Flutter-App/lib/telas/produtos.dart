import 'package:flutter/material.dart';
import '../modelos/produto.dart';
import 'detalhes.dart';

class ProdutosPage extends StatelessWidget {
  final List<Produto> produtos;
  final void Function(Produto) onAlternarFavorito;

  const ProdutosPage({
    super.key,
    required this.produtos,
    required this.onAlternarFavorito,
  });

  void _abrirDetalhes(BuildContext context, Produto p) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetalhesPage(
          produto: p,
          onAlternarFavorito: () => onAlternarFavorito(p),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: produtos.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final p = produtos[index];
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
              icon: Icon(p.favorito ? Icons.favorite : Icons.favorite_border),
              onPressed: () => onAlternarFavorito(p),
            ),
            onTap: () => _abrirDetalhes(context, p),
          ),
        );
      },
    );
  }
}
