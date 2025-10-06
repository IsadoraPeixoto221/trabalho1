import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailCtrl = TextEditingController();
  final senhaCtrl = TextEditingController();
  String? erro;

  void _entrar() {
    setState(() => erro = null);
    if (emailCtrl.text.isEmpty || senhaCtrl.text.isEmpty) {
      setState(() => erro = 'Preencha e-mail e senha.');
      return;
    }
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _irParaCadastro() async {
    final result = await Navigator.pushNamed(context, '/cadastro');
    if (!mounted) return;
    if (result == 'ok') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cadastro realizado! Faça login.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loja SLI Geek - Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 🔹 Logo personalizada no lugar do FlutterLogo
              Image.network(
                'https://img.freepik.com/vetores-premium/gato-fofo-assistindo-filme-no-laptop-design-de-desenho-animado_310181-96.jpg',
                width: 100,
                height: 100,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.broken_image, size: 64),
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailCtrl,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: senhaCtrl,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              if (erro != null) ...[
                const SizedBox(height: 8),
                Text(erro!, style: const TextStyle(color: Colors.red)),
              ],
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _entrar, child: const Text('Entrar')),
              const SizedBox(height: 8),
              TextButton(
                onPressed: _irParaCadastro,
                child: const Text('Criar Conta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
