import 'package:airbnb_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonFormfield extends StatelessWidget {
  final prefixText;
  final hintText;

//1. required 키워드 : 필수 매개변수 설정함.
  const CommonFormfield(
      {Key? key, required this.prefixText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack( //2. 위젯들을 겹치게 사용 할 수 있음.
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          //3. TextFormField 내부 세로 정렬
          decoration: InputDecoration(
            //TextFormField 내부 패딩
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder( //뭐하는 부분인지 모르겠음
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 2
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child:
          Text(prefixText, style: overLine()
          ),
        ),
      ],
    );
  }
}