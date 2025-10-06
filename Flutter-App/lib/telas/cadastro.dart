import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final nomeCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final senhaCtrl = TextEditingController();
  final confirmarCtrl = TextEditingController();
  String? erro;

  void _cadastrar() {
    setState(() => erro = null);
    if (nomeCtrl.text.isEmpty ||
        emailCtrl.text.isEmpty ||
        senhaCtrl.text.isEmpty ||
        confirmarCtrl.text.isEmpty) {
      setState(() => erro = 'Preencha todos os campos.');
      return;
    }
    if (senhaCtrl.text != confirmarCtrl.text) {
      setState(() => erro = 'As senhas não coincidem.');
      return;
    }
    Navigator.pop(context, 'ok');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar Conta')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nomeCtrl,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: senhaCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Senha'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: confirmarCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Confirmar Senha'),
            ),
            if (erro != null) ...[
              const SizedBox(height: 8),
              Text(erro!, style: const TextStyle(color: Colors.red)),
            ],
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: _cadastrar, child: const Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
