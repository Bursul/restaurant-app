import 'package:flutter/material.dart';
import 'package:odette/constants.dart';
import 'package:odette/providers/cart_content.dart';
import 'package:provider/provider.dart';
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
                  color: kNotSoBlack),
            ),
            Text(
              widget.product.price + " Lei",
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
              context.read<CartContent>().addProduct(widget.product);
             
              Navigator.pop(context);
            },
            icon: Icon(Icons.add_shopping_cart),
            label: Text('Add to cart!'),
            color: kButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
