import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class CustomComboboxWidget extends StatelessWidget {
  final List<Pojo> items;
  final Function(Pojo) onChange;
  final Pojo itemSelecionado;
  final String label;

  const CustomComboboxWidget(
      {Key key,
      @required this.items,
      @required this.onChange,
      this.itemSelecionado,
      this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FindDropdown<Pojo>(
      onChanged: onChange,
      label: label,
      items: items,
      selectedItem: itemSelecionado,
      validate: (Pojo item) {
        return item == null ? "Item obrigatório" : null;
      },
      dropdownBuilder: (context, item) {
        return Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 2, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(10)),
          child: item == null
              ? ListTile(
                  title: Text(
                    "Selecione",
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                )
              : ListTile(
                  title: Text(
                    item.descricao,
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
        );
      },
    );
  }
}

class Pojo {
  final String id;
  final String descricao;

  Pojo({this.id, this.descricao});

  @override
  String toString() {
    return  descricao.toString();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pojo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          descricao == other.descricao;

  @override
  int get hashCode => id.hashCode ^ descricao.hashCode;
}
