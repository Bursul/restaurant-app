import 'package:flutter/material.dart';
import 'package:odette/constants.dart';
import 'package:odette/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          ProductBackgound(),
          ProductImage(product: product),
          BuyProductButton(),
          ProductInformation(
              size: size,
              product: product,
            ),
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 10,
      child: Container(
        padding: EdgeInsets.only(right: 10, top: 10),
        width: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22.0),
          child: Image.asset(product.imageUrl),
        ),
      ),
    );
  }
}

class BuyProductButton extends StatelessWidget {
  const BuyProductButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25,
      bottom: 15,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.greenAccent,
          ),
          child: Text(
            'Buy Now!',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}

class ProductInformation extends StatelessWidget {
  const ProductInformation({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: SizedBox(
        height: 136,
        width: size.width - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left:10),
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  product.description),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22.0),
                topRight: Radius.circular(22.0) )
              ),
              child: Text(product.price),
            )
          ],
        ),
      ),
    );
  }
}

class ProductBackgound extends StatelessWidget {
  const ProductBackgound({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.cyan,
        boxShadow: [pBoxShadow],
      ),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
        ),
      ),
    );
  }
}
