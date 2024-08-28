import 'package:flutter/material.dart';
import 'telas/fundo_banco.dart';

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
      home: const FundoBanco(),
    );
  }
}
