import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odette/constants.dart';
import 'package:odette/models/product.dart';
import 'package:odette/screens/productDescriptionDialog/components/description_body.dart';

class ProductDescriptionModal extends StatefulWidget {
  final Product product;
  const ProductDescriptionModal({this.product});

  @override
  _ProductDescriptionModalState createState() =>
      _ProductDescriptionModalState();
}

class _ProductDescriptionModalState extends State<ProductDescriptionModal> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text(
        widget.product.name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kNotSoBlack,
        ),
      ),
      message: DescriptionBody(widget: widget),
    );
  }
}
