import 'package:flutter/material.dart';

class ProductDescriptionFooter extends StatelessWidget {
  const ProductDescriptionFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text(
                "-",
              ),
              shape: CircleBorder(),
              color: Colors.white,
              elevation: 1,
            ),
            Container(
              child: Text("1"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "+",
              ),
              shape: CircleBorder(),
              color: Colors.white,
              elevation: 10,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                label: Text('Add to cart!'),
                color: Colors.amber[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}