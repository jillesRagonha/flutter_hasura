import 'package:flutter_hasura/app/models/produto_model.dart';
import 'package:flutter_hasura/app/modules/home/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final HomeRepository _repository;

  _HomeControllerBase(this._repository){
    _repository.getProduto().then((value) => listaProdutos = value);
  }

  @observable
  List<ProdutoModel> listaProdutos = [];
}
