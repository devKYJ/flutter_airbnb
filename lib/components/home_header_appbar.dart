import 'package:airbnb_app/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class HomeheaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    
    );
  }

}

Widget _buildAppBarMenu() {
  return Row(
    children: [
      Text("회원가입", style: subtitle1(mColor: Colors.white)),
      SizedBox(width: gap_m),
      Text("로그인", style: subtitle1(mColor: Colors.white))
    ],
  );
}

Widget _buildAppBarLogo() {
  return Row(
    children: [
      Image.asset("assets/logo.png",
        width: 30,
        height: 30,
        color: Colors.redAccent,
      ),
      SizedBox(width: gap_s),
      // Spacer(),//TODO; 왜 Spacer(),는 안써질까,, 위젯간의 간격인가???
      //sizedBox : 지정된 간격을 주고 싶을때
      //spacer : 디바이스 크기에 따라 비율적으로 간격을 줄 때
      Text("RoomOfAll", style: h5(mColor: Colors.white))
    ],
  );
}