import 'package:flutter/material.dart';
import 'package:odette/providers/category_change.dart';
import 'package:provider/provider.dart';

class FoodCategorySelector extends StatefulWidget {
  @override
  _FoodCategorySelectorState createState() => _FoodCategorySelectorState();
}

class _FoodCategorySelectorState extends State<FoodCategorySelector> {
  int selectedIndex = 0;

  final List<String> categories = [
    'Burger',
    'Pizza',
    'Ciorba',
    'Paste',
    'Desert'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      padding: EdgeInsets.only(bottom: 10),
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                context.read<CategoryChange>().setCategory(index);
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.white.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            );
          }),
    );
  }
}
