import 'package:flutter/cupertino.dart';
import 'package:flutter_hasura/app/models/categoria_produto_model.dart';
import 'package:flutter_hasura/app/models/produto_model.dart';
import 'package:flutter_hasura/app/models/tipo_produto_model.dart';
import 'package:flutter_hasura/app/modules/add_produto/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'add_produto_controller.g.dart';

class AddProdutoController = _AddProdutoControllerBase
    with _$AddProdutoController;

abstract class _AddProdutoControllerBase with Store {
  final ProdutoRepository _repository;

  @observable
  ProdutoModel produtoModel = ProdutoModel();

  @action
  setProdutoModel(ProdutoModel produtoModel){
    this.produtoModel = produtoModel;
  }

  _AddProdutoControllerBase(this._repository) {
    _repository.getCategorias().then((value) => categorias = value);
    _repository.getTipos().then((value) => tipos = value);
  }

  @observable
  List<CategoriaProdutoModel> categorias = [];

  @observable
  List<TipoProdutoModel> tipos = [];

  @action
  void adicionarProduto() async{
   await _repository.adicionarProduto(produtoModel);


  }
}
