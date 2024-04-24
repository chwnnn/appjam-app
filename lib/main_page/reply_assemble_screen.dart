import 'package:appjam_app/main_page/reply_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReplyAssembleScreen extends StatelessWidget {
  const ReplyAssembleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45),
            Text(
              '답변을 모아봤어요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Yeongdeok Sea',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
            SizedBox(height: 40),
            Note(context),
            Note(context),
            Note(context),
            Note(context),
          ],
        ),
      ),
    );
  }
}

Widget Note(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ReplyScreen(),
                ),
              );
            },
            child: SvgPicture.asset('asset/imgs/frame5.svg'),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                softWrap: true,
                '상대방이 당신에게 ‘놀러가자’라고 \n한다면 어떤 기분이신가요?',
                style: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 16,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '2024.04.20 ',
                style: TextStyle(
                  color: Color(0xFF7A7471),
                  fontSize: 14,
                  fontFamily: 'Yeongdeok Sea',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 40),
    ],
  );
}
