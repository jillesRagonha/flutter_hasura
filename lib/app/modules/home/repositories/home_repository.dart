import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeRepository extends Disposable {
  HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  List<String> getProduto() {
    var query = """
    query GetProdutos {
      produto {
        id
        nome
        valor
      tipo_produto {
        tipo
      }
      categoria_produto {
        categoria
      }
  }
}""";

    return ['1', '2', '3', '4'];
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
