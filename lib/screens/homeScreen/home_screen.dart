import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odette/screens/homeScreen/components/appbar_extender.dart';
import 'package:odette/screens/homeScreen/components/food_category_selector.dart';
import 'package:odette/screens/homeScreen/components/homeScreenAppBar.dart';
import 'package:odette/screens/homeScreen/components/product_list.dart';

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
                AppBarExtender(),
                ProductList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
