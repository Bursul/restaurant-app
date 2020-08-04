import 'package:flutter/material.dart';
import 'package:odette/screens/productDescriptionDialog/productDescriptionDialog.dart';


class PriceAndBuy extends StatelessWidget {
  const PriceAndBuy({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductDescriptionModal widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Price",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              widget.product.price,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
        Spacer(),
        Container(
          alignment: Alignment.center,
          child: FlatButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.add_shopping_cart),
            label: Text('Add to cart!'),
            color: Colors.amber[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
