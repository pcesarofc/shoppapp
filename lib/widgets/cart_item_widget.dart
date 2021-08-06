import 'package:flutter/material.dart';
import 'package:shop/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  CartItemWidget(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.all(8),
        child: ListTile(
          title: Text(cartItem.title),
          subtitle: Text('Total : R\$ ${cartItem.price * cartItem.quantity}'),
          trailing: Text('${cartItem.quantity}x'),
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(3),
              child: FittedBox(
                child: Text('${cartItem.price}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
