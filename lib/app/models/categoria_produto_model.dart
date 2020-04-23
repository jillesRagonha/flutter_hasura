class CategoriaProdutoModel {
  String id;
  String categoria;

  CategoriaProdutoModel({this.id, this.categoria});

  factory CategoriaProdutoModel.fromJson(Map<String, dynamic> json) =>
      CategoriaProdutoModel(
        categoria: json["categoria"],
      );

  Map<String, dynamic> toJson() => {
    "categoria": categoria,
  };

  CategoriaProdutoModel copyWith({
    String categoria,
  }) =>
      CategoriaProdutoModel(
        categoria: categoria ?? this.categoria,
      );
}
