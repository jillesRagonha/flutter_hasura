
import 'package:flutter_hasura/app/models/produto_model.dart';
import 'package:flutter_hasura/constantes/constantes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeRepository extends Disposable {
  HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  Future<List<ProdutoModel>> getProduto() async {
    var query = queryBuscarProdutos;
    var snapshot = await _hasuraConnect.query(query);

    return ProdutoModel.fromJsonList(snapshot["data"]["produto"] as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}

}
