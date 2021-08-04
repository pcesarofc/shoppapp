import 'package:flutter/material.dart';
import 'views/product_overviews_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Loja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductOverViewScreen(),
    );
  }
}

