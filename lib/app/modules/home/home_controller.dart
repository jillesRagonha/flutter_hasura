import 'package:flutter_hasura/app/modules/home/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final HomeRepository _repository;

  _HomeControllerBase(this._repository){
    listaProdutos= _repository.getProduto();
  }

  @observable
  List<String> listaProdutos = [];
}
