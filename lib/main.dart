import 'package:flutter/material.dart';
import 'package:shoppingcart/components/shoppingcart_detail.dart';
import 'package:shoppingcart/components/shoppingcart_header.dart';
import 'package:shoppingcart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      // 첫 번째 페이지는 Stateless만들어서 정적으로 만든다.
      // 변경될 데이터는 Stateful로 만들어서 동적으로 작업
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

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

  //AppBar를 이 페이지에서만 사용하기 때문에 메서드로 분리
  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      title: Text("ShoppingCart"),
    );
  }
}
