import 'package:flutter/material.dart';
import 'package:odette/providers/cart_content.dart';
import 'package:odette/screens/cart/cart.dart';
import 'package:provider/provider.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        flexibleSpace: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Image.asset('assets/favicon-x114.png'),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: Stack(children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                iconSize: 30.0,
                color: _getFilteredProducts(context) > 0
                    ? Colors.amber[400]
                    : Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
              ),
              _showCartItemsCounter(context),
            ]),
          ),
        ],
      ),
    );
  }

  int _getFilteredProducts(BuildContext context) {
    return context.watch<CartContent>().cartItems.length;
  }

  Widget _showCartItemsCounter(BuildContext context) {
    if (_getFilteredProducts(context) > 0) {
      return Positioned(
        right: 1,
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Text(
            _getFilteredProducts(context).toString(),
            style: TextStyle(
                color: _getFilteredProducts(context) > 0
                    ? Colors.amber[400]
                    : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
