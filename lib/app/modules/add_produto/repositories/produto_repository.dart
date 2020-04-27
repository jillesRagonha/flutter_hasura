import 'package:flutter_hasura/app/models/categoria_produto_model.dart';
import 'package:flutter_hasura/app/models/produto_model.dart';
import 'package:flutter_hasura/app/models/tipo_produto_model.dart';
import 'package:flutter_hasura/constantes/constantes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class ProdutoRepository extends Disposable {
  HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);

  Future<List<CategoriaProdutoModel>> getCategorias() async {
    var query = queryBuscarCategorias;
    var snapshot = await _hasuraConnect.query(queryBuscarCategorias);
    return CategoriaProdutoModel.fromJsonList(
        snapshot["data"]["categoria_produto"] as List);
  }

  Future<List<TipoProdutoModel>> getTipos() async {
    var query = queryBuscarTipos;
    var snapshot = await _hasuraConnect.query(queryBuscarTipos);
    return TipoProdutoModel.fromJsonList(
        snapshot["data"]["tipo_produto"] as List);
  }

  Future<bool> adicionarProduto(ProdutoModel produtoModel) async {
    var mutation = mutationAddProtudo;
    var snapshot = await _hasuraConnect.mutation(mutation, variables: {
      "nome": produtoModel.nome,
      "valor": produtoModel.valor,
      "categoria": produtoModel.categoriaProduto.id,
      "tipo": produtoModel.tipoProduto.id,
    });

    print(snapshot);
    return snapshot["data"]["insert_produto"]["affected_rows"] > 0;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
