class TipoProdutoModel {
  String id;
  String tipo;

  TipoProdutoModel({this.id, this.tipo});

  factory TipoProdutoModel.fromJson(Map<String, dynamic> json) =>
      TipoProdutoModel(
        tipo: json["tipo"],
      );

  Map<String, dynamic> toJson() => {
        "tipo": tipo,
      };

  TipoProdutoModel copyWith({
    String tipo,
  }) =>
      TipoProdutoModel(
        tipo: tipo ?? this.tipo,
      );
}
