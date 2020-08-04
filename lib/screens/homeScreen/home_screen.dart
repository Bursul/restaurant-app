import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';
import 'package:odette/providers/category_change.dart';
import 'package:odette/screens/homeScreen/components/food_category_selector.dart';
import 'package:odette/screens/homeScreen/components/homeScreenAppBar.dart';
import 'package:odette/screens/homeScreen/components/product_card.dart';
import 'package:odette/screens/productDescriptionDialog/productDescriptionDialog.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: HomeScreenAppBar(),
      ),
      body: Column(
        children: <Widget>[
          FoodCategorySelector(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: getFilteredProducts(context).length,
                  itemBuilder: (context, index) => ProductCard(
                    product: getFilteredProducts(context).elementAt(index),
                    press: () {
                      var elementAt = products
                          .where((element) =>
                              element.categoryId ==
                              Provider.of<CategoryChange>(context,
                                      listen: false)
                                  .category)
                          .elementAt(index);
                      var action = ProductDescriptionModal(product: elementAt);
                      showCupertinoModalPopup(
                          context: context, builder: (context) => action);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Iterable<Product> getFilteredProducts(BuildContext context) {
    return products.where((element) =>
        element.categoryId == context.watch<CategoryChange>().category);
  }
}

