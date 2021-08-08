import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context);
    final productItems = products.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCTFORM,
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: products.itemsCount,
          itemBuilder: (ctx, i) => Column(
            children: [
              ProductItem(productItems[i]),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
