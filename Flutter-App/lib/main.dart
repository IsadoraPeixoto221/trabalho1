import 'package:flutter/material.dart';
import 'telas/login.dart';
import 'telas/cadastro.dart';
import 'telas/home.dart';
import 'telas/splash.dart';

void main() {
  runApp(const LojaFlutterApp());
}

class LojaFlutterApp extends StatelessWidget {
  const LojaFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loja Flutter',
      theme: ThemeData(
        // Força Material 2 para evitar o “balãozinho” branco do M3
        useMaterial3: false,
        primarySwatch: Colors.green,

        // Cor de fundo global (rosa clarinho opcional)
        scaffoldBackgroundColor: const Color(0xFFF8F4FF),

        // “Anula” tooltips globais (especialmente no Web)
        tooltipTheme: const TooltipThemeData(
          decoration: BoxDecoration(color: Colors.transparent),
          textStyle: TextStyle(color: Colors.transparent),
          waitDuration: Duration.zero,
          showDuration: Duration(milliseconds: 1),
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/cadastro': (_) => const CadastroPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
