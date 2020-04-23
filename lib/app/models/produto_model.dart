import 'package:flutter_hasura/app/models/categoria_produto_model.dart';
import 'package:flutter_hasura/app/models/tipo_produto_model.dart';
import 'dart:convert';

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

  ProdutoModel produtoModelFromJson(String str) =>
      ProdutoModel.fromJson(json.decode(str));

  String produtoModelToJson(ProdutoModel data) => json.encode(data.toJson());

  factory ProdutoModel.fromJson(String str) =>
      ProdutoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromMap(Map<String, dynamic> json) => ProdutoModel(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"].toDouble(),
        tipoProduto: TipoProdutoModel.fromMap(json["tipo_produto"]),
        categoriaProduto:
            CategoriaProdutoModel.fromMap(json["categoria_produto"]),
      );

  Map<String, dynamic> toMap() => {
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

  static List<ProdutoModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<ProdutoModel>((item) => ProdutoModel.fromMap(item))
        .toList();
  }
}
