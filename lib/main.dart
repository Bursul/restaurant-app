import 'package:flutter/material.dart';
import 'package:odette/providers/cart_content.dart';
import 'package:odette/providers/category_change.dart';
import 'package:odette/screens/homeScreen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CategoryChange()),
      ChangeNotifierProvider(create: (_) => CartContent()),
    ],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[700],
        accentColor: Colors.yellow[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}


