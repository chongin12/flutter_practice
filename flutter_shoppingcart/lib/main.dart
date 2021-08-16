import 'package:flutter/material.dart';
import 'components/shoppingcart_header.dart';
import 'components/shoppingcart_detail.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          print("Clicked");
        },
      ),
      actions: [
        IconButton(
          onPressed: () {
            print("클릭됨");
          },
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}
