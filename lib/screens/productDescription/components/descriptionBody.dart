import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';
import 'package:odette/screens/productDescriptionDialog/components/image_carousel.dart';
import 'package:odette/screens/productDescription/components/informationArea.dart';

class ProductDescriptionBody extends StatelessWidget {
  final Product product;

  const ProductDescriptionBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselWithIndicator(),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22),
                    topLeft: Radius.circular(22)),
                color: Theme.of(context).accentColor,
              ),
              child:
                  InformationRow(product: product)),
        )
      ],
    );
  }
}

