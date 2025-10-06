import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.flutter_dash, size: 80),
            SizedBox(height: 16),
            Text(
              'Sobre o Aplicativo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Este é um app chamado Loja SLI Geek.\n\n'
              'Ele foi desenvolvido por estudantes do UniSENAI.\n'
              'Suelem, Lucas e Isadora.\n\n'
              'TODOS OS DIREITOS RESERVADOS.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
