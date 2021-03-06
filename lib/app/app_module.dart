import 'package:flutter_hasura/app/shared/custom_combobox/custom_combobox_controller.dart';
import 'package:flutter_hasura/app/app_controller.dart';
import 'package:flutter_hasura/app/modules/add_produto/add_produto_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hasura/app/app_widget.dart';
import 'package:flutter_hasura/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomComboboxController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/addProduto", module: AddProdutoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
