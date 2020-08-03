import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';
import 'package:odette/screens/productDescription/components/rating.dart';

class InformationRow extends StatelessWidget {
  final Product product;

  const InformationRow({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(flex: 1, child:  ProductTitleAndPrice(product: product),),
        Flexible( flex: 5,
                  child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ProductInfoButton(buttonText: "Descriere"),
                      ProductInfoButton(buttonText: "Informatii suplimentare"),
                      ProductInfoButton(buttonText: "Recenzii"),
                      SizedBox(height: 40),
                      Rating(product: product)
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      
                      // color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    child: Text(product.description),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}


class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 5, top: 8),
          child: Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 5),
          child: Text(
            product.price + " / bucata",
            style: TextStyle(color: Colors.amber[800]),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 5,
          thickness: 0.5,
          indent: 100,
          endIndent: 100,
        ),
        const Divider(
          color: Colors.black,
          height: 0,
          thickness: 0.5,
          indent: 100,
          endIndent: 100,
        ),
      ],
    );
  }
}


class ProductInfoButton extends StatelessWidget {
  final String buttonText;

  const ProductInfoButton({Key key, this.buttonText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Colors.black),
          ),
          color: Theme.of(context).accentColor,
        ),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.green,
          hoverColor: Colors.amber,
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
