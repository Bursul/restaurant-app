import 'package:flutter/material.dart';

var pBoxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0, 3),
);

AppBar buildAppBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        icon: Icon(Icons.menu),
        iconSize: 30.0,
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    title: Text(
      'App title',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    elevation: 0.0,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    ],
  );
}
