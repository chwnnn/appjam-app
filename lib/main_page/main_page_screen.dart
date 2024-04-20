import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/main_page/memo_screen.dart';
import 'package:appjam_app/main_page/select_icon_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                SvgPicture.asset('asset/imgs/solid-leaf.svg'),
                SizedBox(width: 3),
                Text('100'),
                SizedBox(width: 90),
                Text('홍길동'),
                PopupMenuButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                    itemBuilder: (_) {
                      return [
                        const PopupMenuItem<String>(
                            value: 'Item 1', child: Text('홍길동')),
                        const PopupMenuItem<String>(
                            value: 'Item 2', child: Text('설정')),
                        const PopupMenuItem<String>(
                          value: 'Item 3',
                          child: Text(
                            '로그아웃',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ];
                    }),
                SizedBox(width: 25),
                TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset('asset/imgs/Frame2.svg'),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(40, 40)), // Set minimum size
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset('asset/imgs/shop.svg'),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(40, 40)), // Set minimum size
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              '누구의 속마음을 알아볼까?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Yeongdeok Sea',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '코드 abcd1234',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7A7471),
                    fontSize: 16,
                    fontFamily: 'Yeongdeok Sea',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.copy,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SelectIconScreen()));
              },
              child: Image.asset('asset/imgs/sori1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
