import 'package:flutter/material.dart';
import 'package:odette/models/product.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            child: Text(
          'Give us a rating!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        Container(
          height: 30,
          child: Row(
            children: starsForRatings(product.rating),
          ),
        )
      ],
    );
  }

  List<Icon> starsForRatings(int rating) {
    List<Icon> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(Icon(Icons.star));
    }
    return stars;
  }
}
