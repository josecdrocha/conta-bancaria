import 'package:flutter_aula_1/models/item_banco.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ItemBanco', () {
    test('Deve criar uma instância de ItemBanco com um valor int', () {
      final item = ItemBanco<int>(descricao: 'Saldo disponível', valor: 5000);

      expect(item.descricao, 'Saldo disponível');
      expect(item.valor, 5000);
    });

    test('Deve criar uma instância de ItemBanco com um valor String', () {
      final item = ItemBanco<String>(
          descricao: 'Conta Corrente', valor: 'Agência: 1234 | Conta: 56789-0');

      expect(item.descricao, 'Conta Corrente');
      expect(item.valor, 'Agência: 1234 | Conta: 56789-0');
    });

    test('Deve converter o item para uma string corretamente', () {
      final item =
          ItemBanco<double>(descricao: 'Limite do Cartão', valor: 2500.00);

      expect(item.toString(), 'Descrição: Limite do Cartão, Valor: 2500.0');
    });
  });
}
