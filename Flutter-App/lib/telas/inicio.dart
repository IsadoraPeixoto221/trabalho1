import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.shopping_bag, size: 80),
            SizedBox(height: 16),
            Text(
              'Bem-vindo à SLI Geek!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Use o menu para navegar pelas seções.'),
          ],
        ),
      ),
    );
  }
}
