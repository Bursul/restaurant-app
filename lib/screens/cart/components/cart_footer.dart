import 'package:flutter/material.dart';
import 'package:odette/constants.dart';
import 'package:odette/models/product.dart';
import 'package:odette/screens/shipping/shipping_details.dart';

class CartFooter extends StatelessWidget {
  const CartFooter({
    Key key,
    @required this.productList,
  }) : super(key: key);

  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Cost Total:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kCartCostColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                _getTotalCost(productList).toString() + " Lei",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kCartCostColor),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shipping()),
                  );
                },
                icon: Icon(Icons.local_shipping),
                label: Text('Continua'),
                color: kButtonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _getTotalCost(List<Product> products) {
    return products
        .map((e) => int.parse(e.price))
        .fold(0, (value, element) => value + element);
  }
}
