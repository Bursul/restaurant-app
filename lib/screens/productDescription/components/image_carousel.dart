import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CarouselSlider(  
          items: imageSliders,
          options: CarouselOptions(
            height: 150,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,

              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

//todo list for specific category
final List<String> imgList = [
  'assets/negresa_vegana/1-NEGRESA-VEGANA.jpg',
  'assets/negresa_vegana/2-NEGRESA-VEGANA.jpg',
  'assets/negresa_vegana/3-NEGRESA-VEGANA.jpg',
  'assets/negresa_vegana/4-NEGRESA-VEGANA.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            // margin: EdgeInsets.all(25.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 350.0,
                    ),
                  ],
                )),
          ),
        ))
    .toList();
