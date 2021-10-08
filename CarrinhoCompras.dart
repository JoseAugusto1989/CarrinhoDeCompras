import 'dart:io';

List<String> produtos = [];
main() {
  listaProdutos();
}

listaProdutos() {
  bool condicao = true;

  while (condicao) {
    print("Adicione um Produto: ");
    var text = stdin.readLineSync();

    if (text == "sair") {
      print("Fim do App");
      condicao = false;
    } else if (text == "imprimir") {
      print("Produtos Adicionados:");
      printProdutos();
      print("\n");
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text!);
      print("Produto Adicionado com Sucesso!");
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

printProdutos() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i: ${produtos[i]}");
  }
}

remover() {
  print("Qual item deseja remover:");
  printProdutos();
  int item = stdin.readLineSync() as int;
  produtos.removeAt(item);
  print("Item Removido");
  print("\n");
}
