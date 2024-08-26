import 'package:flutter/material.dart';
import 'telas/fundo_banco.dart'; // Atualize o caminho para refletir a estrutura de diretórios

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Conta Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const FundoBanco(), // Certifique-se de que o nome da classe está correto
    );
  }
}
