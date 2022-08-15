import "package:flutter/material.dart";
import 'package:flutter_food/cart/card.dart';
import 'package:flutter_food/data/main.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(cart);
    return SafeArea(
        child: Container(
      child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            if (cart.isEmpty) {
              return Container();
            } else {
              return CartCard(
                  name: cart[index]["name"],
                  url: cart[index]["url"],
                  price: cart[index]["price"]);
            }
          }),
    ));
  }
}
