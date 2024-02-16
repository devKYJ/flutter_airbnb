import 'package:flutter/cupertino.dart';

import 'home_body_banner.dart';
import 'home_body_popular.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width * 0.7;//화면 사이즈 받기. 화면의 70%만 차지하게 영역 강제.

    return Align(
      child: SizedBox(
        width: bodyWidth,
         child: Column(
           children: [
             HomeBodyBanner(),
             HomeBodyPopular(),
           ],
         ),
      ),
    );
  }
}