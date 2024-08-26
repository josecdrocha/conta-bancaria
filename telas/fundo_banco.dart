import 'package:flutter/material.dart';

class FundoBanco extends StatelessWidget {
  const FundoBanco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Conta Bancária'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _BalanceCard(),
            SizedBox(height: 16.0),
            _AccountCard(),
            SizedBox(height: 16.0),
            _CreditCard(),
            SizedBox(height: 16.0),
            _InvestmentCard(),
          ],
        ),
      ),
    );
  }
}

class _BalanceCard extends StatelessWidget {
  const _BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8,
      child: const ListTile(
        leading: Icon(Icons.account_balance_wallet),
        title: Text('Saldo disponível',
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('R\$ 5.000,00', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8,
      child: const ListTile(
        leading: Icon(Icons.account_balance),
        title: Text('Conta Corrente',
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Agência: 1234 | Conta: 56789-0',
            style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class _CreditCard extends StatelessWidget {
  const _CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8,
      child: const ListTile(
        leading: Icon(Icons.credit_card),
        title: Text('Cartão de Crédito',
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Limite disponível: R\$ 2.500,00',
            style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class _InvestmentCard extends StatelessWidget {
  const _InvestmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8,
      child: const ListTile(
        leading: Icon(
          Icons.attach_money,
        ),
        title: Text('Investimentos',
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Total Investido: R\$ 15.000,00',
            style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
