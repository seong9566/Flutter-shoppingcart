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
      debugShowCheckedModeBanner: false,
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
      //AppBar의 제일 왼쪽에 있는것 ex) 페이지 이동하면 뒤로가기 버튼 생성됨.
      // leading: InkWell(
      //     onTap: () {
      //       print("클릭됨");
      //     },
      //     child: Icon(Icons.arrow_back)),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          print("클릭됨");
        },
      ),
      //AppBar의 가장 오늘쪽 메뉴 자리 : actions[]
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print("클릭됨");
          },
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
