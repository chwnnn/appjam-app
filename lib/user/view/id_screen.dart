import 'dart:convert';

import 'package:appjam_app/component/custom_text_form_field.dart';
import 'package:appjam_app/const/data.dart';
import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

Future<void> fetchUserData() async {
  final response = await http.get(Uri.parse('http://$ip/auth/signup'));

  if (response.statusCode == 200) {
    final userData = jsonDecode(response.body) as Map<String, dynamic>;
    print('User Data: $userData');
  } else {
    print('Error fetching user data: ${response.statusCode}');
  }
}

class IdScreen extends StatefulWidget {
  const IdScreen({super.key});

  @override
  State<IdScreen> createState() => _IdScreenState();
}

class _IdScreenState extends State<IdScreen> {
  final _idController = TextEditingController();

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
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  '아이디를 작성해주세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFF181717),
                    fontSize: 26,
                  ),
                ),
                Text(
                  '아이디는 최소 4자 이상 12자 이하여야해요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFFBDBAB7),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 50),
                CustomTextFormField(
                  textAlgin: TextAlign.center,
                  hintText: '아이디 입력',
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
                            builder: (_) => PasswordScreen(),
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
