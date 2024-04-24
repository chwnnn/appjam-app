import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/main_page/calendar_comment_screen.dart';
import 'package:appjam_app/main_page/memo_screen.dart';
import 'package:appjam_app/main_page/reply_screen.dart';
import 'package:flutter/material.dart';

class MailboxScreen extends StatelessWidget {
  const MailboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                '느린 편지를 전달해봐요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
              SizedBox(height: 50),
              Text(
                '느린 편지는 최대 1년 후 원하는 상대방에게 전달돼요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 16,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
              SizedBox(height: 50),
              Image.asset(
                'asset/imgs/mailbox.png',
                width: 450,
                height: 450,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CalendarCommentScreen(),
                      ),
                    );
                  },
                  child: Text(
                    '편지 쓰기',
                    style: YeongdeokSea.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
