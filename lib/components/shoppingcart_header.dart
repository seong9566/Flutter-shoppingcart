//파일명은 _ 를 쓰지만 클래스명은 파스칼을 쓴다
import 'package:flutter/material.dart';

//<******************중요한 개념********************>
// setstate란? 상태변수를 제어 하는 함수이다.
// stateful 함수는 setstate함수를 가지고 있다.
// stateless는 setstate함수를 가지고 있지 않다.
// Ex) 버튼(stateless)을 클릭하면 -> 사진(stateful)이 바뀌어야한다, 그렇다고 두개를 다른 클래스로 만들게 되면,
// stateless는 setstate함수를 가지고 있지 않아서 상태 변수를 관리 하기 힘들다.
// 상태를 제어하기 위해 버튼(stateless)과 사진(stateful)를 모두 stateful내부에 두면 setstate를 제어하기 쉬워진다.
// 하지만 여기서 버튼이 한개가 아니라 여러개가 된다면 나머지 버튼은 필요가 없어서 기술이 필요하다.
//
class ShoppingCartHeader extends StatefulWidget {
  // 동적이기 때문에 Stateful위젯
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
    "KakaoTalk_20221006_092427260_01.jpg",
    "KakaoTalk_20221006_092427260_02.jpg",
    "KakaoTalk_20221006_092427260_03.jpg",
    "KakaoTalk_20221006_092427260_04.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        // 사진 둥글게 만드는 속성
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(
            selectePic[selectedId], // 상태 변수인 이유 - 버튼 클릭 마다 사진이 바껴야하기때문
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderSelectorButton(
          0,
        ),
        _buildHeaderSelectorButton(1),
        _buildHeaderSelectorButton(2),
        _buildHeaderSelectorButton(3),
      ],
    );
  }

  IconButton _buildHeaderSelectorButton(int id) {
    return IconButton(
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
        icon: Icon(
          Icons.directions_bike,
          color: Colors.black,
        ));
  }
}
