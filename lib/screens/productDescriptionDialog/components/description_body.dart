import 'package:flutter/material.dart';
import 'package:odette/constants.dart';
import 'package:odette/screens/productDescriptionDialog/components/image_carousel.dart';
import 'package:odette/screens/productDescriptionDialog/components/price_and_buy.dart';
import 'package:odette/screens/productDescriptionDialog/productDescriptionDialog.dart';


class DescriptionBody extends StatefulWidget {
  DescriptionBody({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductDescriptionModal widget;

  @override
  _DescriptionBodyState createState() => _DescriptionBodyState();
}

class _DescriptionBodyState extends State<DescriptionBody> {
  bool _star = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarouselWithIndicator(),
            Material(
              type: MaterialType.transparency,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: starsForRatings(widget.widget.product.rating),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Ingredients:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kNotSoBlack),
            ),
            SizedBox(height: 10),
            Text(
              widget.widget.product.description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kNotSoBlack),
            ),
            SizedBox(height: 20),
            PriceAndBuy(widget: widget.widget)
          ],
        ),
      );
    });
  }

  List<InkWell> starsForRatings(int rating) {
    List<InkWell> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(InkWell(
        child: (_star
            ? Icon(
                Icons.star,
                color: kRatingColor,
                size: 30,
              )
            : Icon(
                Icons.star_border,
                color: kRatingColor,
                size: 30,
              )),
        onTap: () {
          setState(() {
            _star = true;
          });
        },
      ));
    }
    return stars;
  }
}
