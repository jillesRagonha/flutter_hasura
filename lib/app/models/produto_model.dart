import 'package:flutter_hasura/app/models/categoria_produto_model.dart';
import 'package:flutter_hasura/app/models/tipo_produto_model.dart';

class ProdutoModel {
  String nome;
  String id;
  double valor;
  TipoProdutoModel tipoProduto;
  CategoriaProdutoModel categoriaProduto;

  ProdutoModel(
      {this.nome,
      this.id,
      this.valor,
      this.tipoProduto,
      this.categoriaProduto});

  factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"],
        tipoProduto: TipoProdutoModel.fromJson(json["tipo_produto"]),
        categoriaProduto:
            CategoriaProdutoModel.fromJson(json["categoria_produto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "valor": valor,
        "tipo_produto": tipoProduto.toJson(),
        "categoria_produto": categoriaProduto.toJson(),
      };

  ProdutoModel copyWith({
    String id,
    String nome,
    int valor,
    TipoProdutoModel tipoProduto,
    CategoriaProdutoModel categoriaProduto,
  }) =>
      ProdutoModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        valor: valor ?? this.valor,
        tipoProduto: tipoProduto ?? this.tipoProduto,
        categoriaProduto: categoriaProduto ?? this.categoriaProduto,
      );
}
