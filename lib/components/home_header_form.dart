import 'package:airbnb_app/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(padding: const EdgeInsets.only(top: gap_m), //1. AppBar와 거리주기
      child: Align( //2. 정렬 위젯
        alignment:
        //3. -1.0부터 1.0까지 가로 범위에서 0.1의 값은 5% //TODO 뭔말
        screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(), // 5. Form 위젯 제목 영역
                  _buildFormField(), // 6. Form 위젯 Text 입력 양식 영역
                  _buildFormSubmit(), // 7. Form 위젯 전송 버튼 영역
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

Widget _buildFormTitle() {
  return Column(
    children: [
      Text("모두의 숙소에서 숙소를 검색하세요", style: h4(),),
      SizedBox(height:gap_m,),
      Text("혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의숙소에 다 있습니다.",
      style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      SizedBox(height: gap_s)
    ],
  );
}

Widget _buildFormField() {
  return Column(

  );
}

Widget _buildFormSubmit() {
  return Column(

  );
}
