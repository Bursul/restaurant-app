import 'package:flutter/material.dart';


class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      flexibleSpace: Container(
        margin: EdgeInsets.only(top: 30, bottom: 10),
        child: Image.asset('assets/favicon-x114.png'),
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, right: 20),
          child: IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}