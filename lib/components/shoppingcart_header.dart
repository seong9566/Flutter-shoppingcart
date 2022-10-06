//파일명은 _ 를 쓰지만 클래스명은 파스칼을 쓴다
import 'package:flutter/material.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  //상태 변수
  //배열을 찾을때 selectedId를 0,1,2,3으로 변경해 찾음.
  int selectedId = 0;
  //상수
  List<String> selectePic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
