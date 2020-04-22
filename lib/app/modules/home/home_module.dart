import 'package:flutter_hasura/app/modules/home/repositories/home_repository.dart';
import 'package:flutter_hasura/app/modules/home/widgets/card_produto/card_produto_controller.dart';
import 'package:flutter_hasura/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_hasura/app/modules/home/home_page.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Repositories
        Bind((i) => HomeRepository(i.get<HasuraConnect>())),
        //Controllers
        Bind((i) => CardProdutoController()),
        Bind((i) => HomeController(i.get<HomeRepository>())),
        //Outros
        Bind((i) => HasuraConnect("https://jilles-loja-hasura.herokuapp.com/v1/graphql")),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
