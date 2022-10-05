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
  //stateless는 무상태이지만, String update를 선언하면 상태가 생긴다.-> 무상태로 선언했는데 왜 상태를 만들어?
  // 그러므로 final을 붙여준다. final을 상태가 없기 때문이다.

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //statless는 정적이기 때문에 동일한 객체를 만들지 않기 위해서 const를 붙인다.
    return Scaffold(
      body: Column(
        children: [
          DayComponent(),
          Container(
            color: Colors.blue,
            height: 200,
            child: Text(
              "밤",
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    ); //const는
  }
}

class DayComponent extends StatefulWidget {
  const DayComponent({Key? key}) : super(key: key);

  @override
  State<DayComponent> createState() => _DayComponentState();
}

class _DayComponentState extends State<DayComponent> {
  String upData = "낯";

  @override
  Widget build(BuildContext context) {
    print("DayComponent실행됨");
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //upData = "해";//버튼을 누르면 값은 바뀌지만 그림이 다시그려지지 않는다.
              // build가 되지 않아서이다.
              setState(() {
                // setState로 상태를 변경할 수 있다.
                upData = "해";
              });
              print(upData);
            },
            child: Text("클릭")),
        Container(
          color: Colors.yellow,
          height: 200,
          child: Text(
            "${upData}",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ],
    );
  }
}
