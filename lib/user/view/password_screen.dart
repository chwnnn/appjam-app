import 'package:appjam_app/component/custom_text_form_field.dart';
import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/login_screen.dart';
import 'package:appjam_app/user/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Text(
                  '마지막!',
                  style: YeongdeokSea.copyWith(
                    color: Colors.green,
                    fontSize: 16
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  '비밀번호를 작성해주세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFF181717),
                    fontSize: 26,
                  ),
                ),
                Text(
                  '8~18자 사이, 숫자, 특수문자 중 1개 이상 포함 해야해요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFFBDBAB7),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 50),
                CustomTextFormField(
                  textAlgin: TextAlign.center,
                  hintText: '비밀번호 입력',
                  onChanged: (String value) {
                    name = value;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '다음으로',
                      style: YeongdeokSea.copyWith(
                        color: Color(0xFF7A7471),
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => LoginScreen(),
                          ),
                        );
                      },
                      child: SvgPicture.asset('asset/imgs/Frame.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
