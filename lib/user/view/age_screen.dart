import 'package:appjam_app/component/custom_text_form_field.dart';
import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({super.key});

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
                      'asset/imgs/grey-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/grey-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/grey-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  '나이를 입력하세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFF181717),
                    fontSize: 26,
                  ),
                ),
                Text(
                  '만 나이가 아닌 세는 나이로 입력해주세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFFBDBAB7),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 50),
                CustomTextFormField(
                  textAlgin: TextAlign.center,
                  hintText: '나이 입력',
                  onChanged: (String value) {
                    name = value;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 3.5),
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
                            builder: (_) => ProfileScreen(),
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
