import 'package:flutter/material.dart';
import 'package:shop/views/product_detail_screen.dart';
import 'views/product_overviews_screen.dart';
import 'package:shop/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Loja',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ProductOverViewScreen(),
      routes: {
           AppRoute.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),   
      }
    );
  }
}

