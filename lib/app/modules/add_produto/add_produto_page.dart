import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hasura/app/models/categoria_produto_model.dart';
import 'package:flutter_hasura/app/models/tipo_produto_model.dart';
import 'package:flutter_hasura/app/shared/custom_combobox/custom_combobox_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'add_produto_controller.dart';

class AddProdutoPage extends StatefulWidget {
  final String title;

  const AddProdutoPage({Key key, this.title = "Adicionar Produto"})
      : super(key: key);

  @override
  _AddProdutoPageState createState() => _AddProdutoPageState();
}

class _AddProdutoPageState
    extends ModularState<AddProdutoPage, AddProdutoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: height - 250,
            right: -50,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
              radius: 130,
            ),
          ),
          Positioned(
            top: height - 210,
            right: 45,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
              radius: 130,
            ),
          ),
          Positioned(
            top: height - 180,
            right: 130,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              radius: 130,
            ),
          ),
          Container(
            height: height,
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    onChanged: (valor) => controller.produtoModel.nome = valor,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Nome do Produto",
                        labelText: "Produto"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (item) => controller.produtoModel.valor = double.parse(item),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Valor do Produto",
                        labelText: "R\$"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Observer(
                    builder: (BuildContext context) {
                      return CustomComboboxWidget(
                          label: "Categoria",
                          items: controller.categorias
                              .map((e) => CategoriaProdutoModel(
                                  id: e.id, categoria: e.categoria))
                              .toList(),
                          onChange: (item) {
                            controller.produtoModel.categoriaProduto = item;
                          });
                    },
                  ),
                  Observer(
                    builder: (BuildContext context) {
                      return CustomComboboxWidget(
                        label: "Tipo",
                        items: controller.tipos
                            .map(
                              (e) => TipoProdutoModel(id: e.id, tipo: e.tipo),
                            )
                            .toList(),

                        onChange: (item) =>
                            controller.produtoModel.tipoProduto = item,
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Salvar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          controller.adicionarProduto();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
