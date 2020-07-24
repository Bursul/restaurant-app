import 'package:flutter/material.dart';
import 'package:odette/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
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
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Container(
              padding: EdgeInsets.only(right: 10, top: 10),
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22.0),
                child: Image.asset('assets/negresa_vegana.jpg'),
              ),
            ),
          ),
          Positioned(
            right: 25,
            bottom: 15,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.greenAccent,
                ),
                child: Text(
                  'Buy Now!',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Lorepsum impsum!'),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Lorepsum impsum!'),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: Text('20 Lei'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
