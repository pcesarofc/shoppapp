import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/widgets/product_grid.dart';
import '../providers/products.dart';

enum FavoriteOptions {
  All,
  Favorite,
}

class ProductOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Products products = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            onSelected: (FavoriteOptions selectedValue) {
              if (selectedValue == FavoriteOptions.Favorite) {
                products.showFavoriteOnly();
              } else {
                products.showAll();
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Somente favoritos'),
                value: FavoriteOptions.Favorite,
              ),
              PopupMenuItem(
                child: Text('Todos'),
                value: FavoriteOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
