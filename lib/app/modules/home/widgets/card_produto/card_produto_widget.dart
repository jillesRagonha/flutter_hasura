import 'package:flutter/material.dart';

class CardProdutoWidget extends StatelessWidget {
  final String nomeProduto;
  final String categoriaProduto;
  final String tipoProduto;
  final String valor;

  const CardProdutoWidget({Key key, @required this.nomeProduto, @required this.categoriaProduto, @required this.tipoProduto, @required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
      children: <Widget>[
        Positioned(
          top: 50,
          right: -50,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
            radius: 130,
          ),
        ),
        Positioned(
          top: 90,
          right: 45,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
            radius: 130,
          ),
        ),
        Positioned(
          top: 110,
          right: 130,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            radius: 130,
          ),
        ),
        Container(

          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                nomeProduto,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                categoriaProduto,
                style: TextStyle(fontSize: 18),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      tipoProduto,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Text(
                    valor,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
