import 'dart:convert';

class CategoriaProdutoModel {
  String id;
  String categoria;

  CategoriaProdutoModel({this.id, this.categoria});

  CategoriaProdutoModel categoriaProdutoModelFromJson(String str) =>
      CategoriaProdutoModel.fromJson(json.decode(str));

  String categoriaProdutoModelToJson(CategoriaProdutoModel data) =>
      json.encode(data.toJson());

  factory CategoriaProdutoModel.fromJson(String str) =>
      CategoriaProdutoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriaProdutoModel.fromMap(Map<String, dynamic> json) =>
      CategoriaProdutoModel(
        id: json["id"],
        categoria: json["categoria"],
      );

  Map<String, dynamic> toMap() => {
        "categoria": categoria,
        "id": id,
      };

  CategoriaProdutoModel copyWith({
    String categoria,
  }) =>
      CategoriaProdutoModel(
        categoria: categoria ?? this.categoria,
      );

  @override
  String toString() {
    return 'CategoriaProdutoModel{id: $id, categoria: $categoria}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriaProdutoModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          categoria == other.categoria;

  @override
  int get hashCode => id.hashCode ^ categoria.hashCode;

  static List<CategoriaProdutoModel> fromJsonList(List lista) {
    if (lista == null) return null;
    return lista
        .map<CategoriaProdutoModel>(
            (categoria) => CategoriaProdutoModel.fromMap(categoria))
        .toList();
  }
}
