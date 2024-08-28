import 'package:flutter/material.dart';
import '../models/item_banco.dart';

class FundoBanco extends StatelessWidget {
  const FundoBanco({super.key});

  @override
  Widget build(BuildContext context) {
    final saldo =
        ItemBanco<double>(descricao: 'Saldo disponível', valor: 5000.00);
    final contaCorrente = ItemBanco<String>(
        descricao: 'Conta Corrente', valor: 'Agência: 1234 | Conta: 56789-0');
    final limiteCartao =
        ItemBanco<double>(descricao: 'Limite do Cartão', valor: 2500.00);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Conta Bancária'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCard(saldo),
            const SizedBox(height: 16.0),
            _buildCard(contaCorrente),
            const SizedBox(height: 16.0),
            _buildCard(limiteCartao),
          ],
        ),
      ),
    );
  }

  Widget _buildCard<T>(ItemBanco<T> item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8,
      color: Colors.lightBlue.shade50,
      child: ListTile(
        leading: const Icon(Icons.account_balance_wallet, color: Colors.blue),
        title: Text(item.descricao,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(item.valor.toString(),
            style: const TextStyle(fontSize: 18, color: Colors.blueAccent)),
      ),
    );
  }
}
