import 'dart:convert';

class TipoProdutoModel {
  String id;
  String tipo;

  TipoProdutoModel({this.id, this.tipo});


  TipoProdutoModel tipoProdutoModelFromJson(String str) =>
      TipoProdutoModel.fromJson(json.decode(str));

  String tipoProdutoModelToJson(TipoProdutoModel data) =>
      json.encode(data.toJson());

  factory TipoProdutoModel.fromJson(String str) =>
      TipoProdutoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());


  factory TipoProdutoModel.fromMap(Map<String, dynamic> json) =>
      TipoProdutoModel(
        id: json["id"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toMap() => {
        "tipo": tipo,
        "id": id,
      };

  TipoProdutoModel copyWith({
    String tipo,
  }) =>
      TipoProdutoModel(
        tipo: tipo ?? this.tipo,
      );

  @override
  String toString() {
    return 'TipoProdutoModel{id: $id, tipo: $tipo}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipoProdutoModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          tipo == other.tipo;

  @override
  int get hashCode => id.hashCode ^ tipo.hashCode;

  static List<TipoProdutoModel> fromJsonList(List lista) {
    if (lista == null) return null;
    return lista
        .map<TipoProdutoModel>(
            (tipo) => TipoProdutoModel.fromMap(tipo))
        .toList();
  }
}
