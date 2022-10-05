import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 실행 클래스
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const만 붙이면 똑같은 객체가 2개가 절대 만들어지지 않는다
    // java로 치면 싱글톤 패턴을 사용하는 이유가 된다.
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//첫 페이지
// stateless는 정적인 파일이다.
// 즉 StatelessWidget를 만들면 항상 똑같은 그림만 그린다.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //statless는 정적이기 때문에 동일한 객체를 만들지 않기 위해서 const를 붙인다.
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 200,
            child: Text("낯"),
          ),
          Container(
            color: Colors.blue,
            height: 200,
            child: Text("밤"),
          )
        ],
      ),
    ); //const는
  }
}
