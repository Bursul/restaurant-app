import 'package:flutter/material.dart';
import 'package:odette/components/product_card.dart';
import 'package:odette/constants.dart';
import 'package:odette/models/product.dart';
import 'package:odette/widgets/food_category_selector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: buildAppBar(),
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
                  itemCount: products.length,
                  itemBuilder: (context,index) => ProductCard(product:products[index]))
              ],
            ),
          )
        ],
      ),
    );
  }

 
}
