import 'package:flutter/material.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/views/cart_screen.dart';
import 'package:shop/views/product_detail_screen.dart';
import 'views/product_overviews_screen.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
      ],
      child: MaterialApp(
          title: 'Minha Loja',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: ProductOverViewScreen(),
          routes: {
            AppRoute.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),
            AppRoute.CART: (ctx) => CartScreen(),
          }),
    );
  }
}
