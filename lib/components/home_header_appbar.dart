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
      SizedBox(width: gap_s), //TODO; 왜 Spacer(),는 안써짐?
      Text("RoomOfAll", style: h5(mColor: Colors.white))
    ],
  );
}