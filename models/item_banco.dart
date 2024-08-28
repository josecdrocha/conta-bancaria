class ItemBanco<T> {
  final String descricao;
  final T valor;

  ItemBanco({required this.descricao, required this.valor});

  @override
  String toString() {
    return 'Descrição: $descricao, Valor: $valor';
  }
}
