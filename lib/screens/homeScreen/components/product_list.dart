import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';
import 'package:odette/providers/category_change.dart';
import 'package:odette/screens/homeScreen/components/product_card.dart';
import 'package:odette/screens/productDescriptionDialog/productDescriptionDialog.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getFilteredProducts(context).length,
      itemBuilder: (context, index) => ProductCard(
        product: getFilteredProducts(context).elementAt(index),
        press: () {
          _openProductDescription(context, index);
        },
      ),
    );
  }

  void _openProductDescription(BuildContext context, int index) {
    var elementAt = products
        .where(
            (element) => element.categoryId == _getProductCategoryId(context))
        .elementAt(index);
    var action = ProductDescriptionModal(product: elementAt);

    showCupertinoModalPopup(context: context, builder: (context) => action);
  }

  int _getProductCategoryId(BuildContext context) {
    return Provider.of<CategoryChange>(context, listen: false).category;
  }

  Iterable<Product> getFilteredProducts(BuildContext context) {
    return products.where((element) =>
        element.categoryId == context.watch<CategoryChange>().category);
  }
}
