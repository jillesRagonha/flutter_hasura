import 'package:flutter_hasura/app/modules/add_produto/repositories/produto_repository.dart';
import 'package:flutter_hasura/app/modules/add_produto/add_produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_hasura/app/modules/add_produto/add_produto_page.dart';
import 'package:hasura_connect/hasura_connect.dart';


class AddProdutoModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => ProdutoRepository(i.get<HasuraConnect>())),
        Bind((i) => AddProdutoController(i.get<ProdutoRepository>())),
        Bind((i) =>
            HasuraConnect(
                "https://jilles-loja-hasura.herokuapp.com/v1/graphql")),

      ];

  @override
  List<Router> get routers =>
      [
        Router(Modular.initialRoute, child: (_, args) => AddProdutoPage()),
      ];

  static Inject get to => Inject<AddProdutoModule>.of();
}
