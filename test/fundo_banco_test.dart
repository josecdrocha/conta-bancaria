import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_aula_1/telas/fundo_banco.dart';

void main() {
  testWidgets('Deve renderizar os cards com os dados corretos',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: FundoBanco(),
    ));

    expect(find.text('Saldo disponível'), findsOneWidget);
    expect(find.text('5000.0'), findsOneWidget);

    expect(find.text('Conta Corrente'), findsOneWidget);
    expect(find.text('Agência: 1234 | Conta: 56789-0'), findsOneWidget);

    expect(find.text('Limite do Cartão'), findsOneWidget);
    expect(find.text('2500.0'), findsOneWidget);
  });

  testWidgets('Deve verificar se os Cards possuem os ícones corretos',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: FundoBanco(),
    ));

    final accountBalanceWalletIcons = find.byIcon(Icons.account_balance_wallet);
    expect(accountBalanceWalletIcons, findsWidgets);

    final icons = find.byType(Icon);
    final iconCount = icons.evaluate().length;

    expect(iconCount, greaterThanOrEqualTo(1));
  });
}
