import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _opacity = 0;

  @override
  void initState() {
    super.initState();

    // Animação de fade-in
    Future.microtask(() => setState(() => _opacity = 1));

    // Espera e vai para login
    Future.delayed(const Duration(milliseconds: 2200), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 900),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://img.freepik.com/vetores-premium/gato-fofo-assistindo-filme-no-laptop-design-de-desenho-animado_310181-96.jpg',
                width: 120,
                height: 120,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.broken_image, size: 64),
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(
                    width: 120,
                    height: 120,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Bem-vindo à Loja SLI Geek',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(strokeWidth: 3),
              ),
              const SizedBox(height: 8),
              const Text('Carregando...'),
            ],
          ),
        ),
      ),
    );
  }
}
