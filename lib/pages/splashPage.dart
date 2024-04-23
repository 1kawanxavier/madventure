import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:madventure/pages/integracao.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  Future<void> _navigateToNextPage() async {
    // Aguarda entre 2 e 5 segundos
    final random = Random();
    final delaySeconds = random.nextInt(4) + 2; // Gera um número aleatório entre 2 e 5
    await Future.delayed(Duration(seconds: delaySeconds));

    // Navega para a próxima página
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => TutorialIntegracao(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2C2D),
      body: Center(child: Image.asset('assets/images/LogoVerde.png')),
    );
  }
}
