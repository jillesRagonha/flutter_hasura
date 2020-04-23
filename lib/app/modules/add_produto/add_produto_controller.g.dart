// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_produto_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddProdutoController on _AddProdutoControllerBase, Store {
  final _$categoriasAtom = Atom(name: '_AddProdutoControllerBase.categorias');

  @override
  List<CategoriaProdutoModel> get categorias {
    _$categoriasAtom.context.enforceReadPolicy(_$categoriasAtom);
    _$categoriasAtom.reportObserved();
    return super.categorias;
  }

  @override
  set categorias(List<CategoriaProdutoModel> value) {
    _$categoriasAtom.context.conditionallyRunInAction(() {
      super.categorias = value;
      _$categoriasAtom.reportChanged();
    }, _$categoriasAtom, name: '${_$categoriasAtom.name}_set');
  }

  final _$tiposAtom = Atom(name: '_AddProdutoControllerBase.tipos');

  @override
  List<TipoProdutoModel> get tipos {
    _$tiposAtom.context.enforceReadPolicy(_$tiposAtom);
    _$tiposAtom.reportObserved();
    return super.tipos;
  }

  @override
  set tipos(List<TipoProdutoModel> value) {
    _$tiposAtom.context.conditionallyRunInAction(() {
      super.tipos = value;
      _$tiposAtom.reportChanged();
    }, _$tiposAtom, name: '${_$tiposAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'categorias: ${categorias.toString()},tipos: ${tipos.toString()}';
    return '{$string}';
  }
}
