import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';
import 'package:odette/providers/cart_content.dart';
import 'package:odette/screens/cart/components/cart_footer.dart';
import 'package:odette/screens/homeScreen/components/product_card.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> productList =
        Provider.of<CartContent>(context).cartItems;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) =>
              CartProductTile(product: productList[index]),
        ),
      ),
      bottomNavigationBar: CartFooter(productList: productList),
    );
  }
}

class CartProductTile extends StatelessWidget {
  const CartProductTile({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      height: 100,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          ProductBackgound(),
          Positioned(
            left: 5,
            top: 15,
            bottom: 5,
            child: Container(
              padding: EdgeInsets.only(right: 15),
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22.0),
                child: Image.asset(product.imageUrl),
              ),
            ),
          ),
          Positioned(
            top: 15,
            child: Container(
              child: Text(product.name),
            ),
          ),
          Positioned(
            child: ItemCountDropdown(),
          ),
          Positioned(
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(22),
                  topLeft: Radius.circular(22),
                )
              ),
              child: Text(
                product.price + " Lei",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 15,
            child: Icon(Icons.menu),
          )
        ],
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
      height: 90,
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

class ItemCountDropdown extends StatefulWidget {
  ItemCountDropdown({Key key}) : super(key: key);

  @override
  _ItemCountDropdownState createState() => _ItemCountDropdownState();
}

class _ItemCountDropdownState extends State<ItemCountDropdown> {
  int dropdownValue = 1;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 15,
      elevation: 0,
      style: TextStyle(color: Colors.blue),
      onChanged: (int newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <int>[1, 2, 3, 4, 5].map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString() + " buc."),
        );
      }).toList(),
    );
  }
}
