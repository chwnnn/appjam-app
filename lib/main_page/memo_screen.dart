import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/main_page/reply_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemoScreen extends StatelessWidget {
  const MemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _memoController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: ScreenUtilInit(
        builder: (context, child) => Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ReplyScreen(),
                    ),
                  );
                },
                child: Icon(
                  Icons.check,
                ),
              ),
            ],
          ),
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
                  Container(
                    width: 0.9.sw,
                    height: 0.5.sh,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '최대 500자까지 답변할 수 있어요.',
                        labelStyle: YeongdeokSea.copyWith(
                          color: Color(0xFFBDBAB7),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xFFBDBAB7),
                          ),
                        ),
                      ),
                      controller: _memoController,
                      maxLength: 500,
                      maxLines: 10,
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
