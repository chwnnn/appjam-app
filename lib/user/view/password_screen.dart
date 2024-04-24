import 'package:appjam_app/component/custom_text_form_field.dart';
import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/login_screen.dart';
import 'package:appjam_app/user/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

Future<void> registerUser(String id, String password, String name, String age, String role) async {
  // Replace with your actual Node.js API endpoint
  final response = await http.post(
    Uri.parse('http://172.16.20.133:3000/auth/signup'),
    body: {
      'id': id,
      'password': password,
      'role': role,
      'name': name,
      'age': age,
       // Include role in the request body
    },
  );

  if (response.statusCode == 200) {
    print('User registered successfully!');
    // Navigate to success screen or perform other actions
  } else {
    print('Error registering user: ${response.statusCode}');
    // Handle registration failure
  }
}

class PasswordScreen extends StatefulWidget {
  final String name;
  final String age;
  final String role;
  final String id;

  const PasswordScreen({
    required this.name,
    required this.age,
    required this.role,
    required this.id,
    super.key,
  });

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

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
                  style:
                      YeongdeokSea.copyWith(color: Colors.green, fontSize: 16),
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
                      onPressed: ()  async{
                        final password = _passwordController.text;
                        if (password.isEmpty) {
                          return; // Handle empty role input
                        }
                        await registerUser(
                        widget.id,
                        widget.name,
                        widget.age,
                          widget.role,
                          password,
                        );
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
