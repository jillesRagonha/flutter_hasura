import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class CustomComboboxWidget extends StatelessWidget {
  final List<Object> items;
  final Function(Object) onChange;
  final Object itemSelecionado;
  final String label;
  final String text;

  const CustomComboboxWidget(
      {Key key,
      @required this.items,
      @required this.onChange,
      this.itemSelecionado,
      this.label,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FindDropdown<Object>(
      onChanged: onChange,
      label: label,
      items: items,
      selectedItem: itemSelecionado,
      validate: (Object item) {
        return item == null ? "Item obrigatório" : null;
      },
      dropdownBuilder: (context, item) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: item == null
              ? ListTile(
                  title: Text(
                    "Selecione",
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                )
              : ListTile(
                  title: Text(itemSelecionado.toString()),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
        );
      },
    );
  }
}
