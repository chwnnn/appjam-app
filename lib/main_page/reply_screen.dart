import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/main_page/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReplyScreen extends StatelessWidget {
  const ReplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _memoController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                const Text(
                  '상대방이 당신에게 ‘놀러가자’라고 한다면 \n어떤 기분이신가요?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Yeongdeok Sea',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  '홍길동',
                  style: TextStyle(
                    color: Color(0xFF181717),
                    fontSize: 18,
                    fontFamily: 'Yeongdeok Sea',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  softWrap: true,
                  '부모님은 우리 삶에서 빼놓을 수 없는 중요한 존재입니다. 그들은 우리의 보호자이자 지도자이며, 가르침과 사랑으로 우리를 이끌어 나가는 분들입니다. 부모님은 우리의 성장과 발전을 위해 헌신하는데, 그 헌신은 언제나 무한합니다. 그들은 우리의 곁에서 항상 응원하고 격려해 주며, 우리가 어려움에 처했을 때 우리에게 힘이 되어줍니다. 부모님은 우리의 모범이기도 하고, 우리가 따라야 할 가치와 도덕의 출처이기도 합니다. 그들의 노고와 사랑은 우리에게 끝없는 감사를 느끼게 합니다. 부모님을 향한 우리의 사랑과 감사는 말로 표현하기 어려울 정도로 큽니다. 그들은 우리의 삶에 빛과 희망을 불어넣어 주는 소중한 존재입니다.',
                  style: TextStyle(
                    color: Color(0xFF7A7471),
                    fontSize: 16,
                    fontFamily: 'Yeongdeok Sea',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CommentScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('asset/imgs/chat-fill.svg'),
                      const SizedBox(width: 10),
                      Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFBDBAB7),
                          fontSize: 16,
                          fontFamily: 'Yeongdeok Sea',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(50, 50), //
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
