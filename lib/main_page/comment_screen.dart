import 'package:appjam_app/const/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _commentController = TextEditingController();
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 10),
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
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  Padding(
                    padding: EdgeInsets.only(bottom: bottomInset),
                    child: TextFormField(
                      onTap: () {},
                      controller: _commentController,
                      maxLength: 200,
                      decoration: InputDecoration(
                        labelText: '최대 200자입니다.',
                        labelStyle: YeongdeokSea.copyWith(
                          color: Color(0xFFBDBAB7),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '1자 이상 입력해야 등록 가능합니다.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
