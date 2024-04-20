import 'package:appjam_app/component/custom_text_form_field.dart';
import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/main_page/main_page_screen.dart';
import 'package:appjam_app/user/view/profile_screen.dart';
import 'package:appjam_app/main_page/root_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _idController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String id;

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
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  '함께 소통을 시작해봐요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFF181717),
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 50),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          labelText: '아이디를 입력해주세요',
                          labelStyle: YeongdeokSea.copyWith(
                            color: Color(0xFFBDBAB7),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFFD3D1CF),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '아이디를 입력해주세요';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true, // Hide password
                        decoration: InputDecoration(
                          labelText: '비밀번호를 입력해주세요',
                          labelStyle: YeongdeokSea.copyWith(
                             color: Color(0xFFBDBAB7),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD3D1CF),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '비밀번호를 입력해주세요';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => RootTab(),
                        ),
                      );
                    },
                    child: Text(
                      '로그인',
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
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _idController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _ageController = TextEditingController();
//   final _roleController = TextEditingController();
//
//   @override
//   void dispose() {
//     _idController.dispose();
//     _passwordController.dispose();
//     _nameController.dispose();
//     _ageController.dispose();
//     _roleController.dispose();
//     super.dispose();
//   }
//
//   void _register() async {
//     if (_formKey.currentState!.validate()) {
//       final url = Uri.parse('http://your-node-server.com/api/register');
//
//       final body = {
//         'id': _idController.text,
//         'password': _passwordController.text,
//         'name': _nameController.text,
//         'age': _ageController.text,
//         'role': _roleController.text,
//       };
//
//       final response = await http.post(
//         url,
//         body: body,
//       );
//
//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('회원가입 완료'),
//         ));
//
//         // Navigate to the next screen
//         Navigator.pushNamed(context, '/home');
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('회원가입 실패'),
//         ));
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         FocusScope.of(context).requestFocus(FocusNode());
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('회원가입'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: _idController,
//                   decoration: const InputDecoration(
//                     labelText: '아이디',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return '아이디를 입력해주세요';
//                     }
//
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   controller: _passwordController,
//                   obscureText: true,
//                   decoration: const InputDecoration(
//                     labelText: '비밀번호',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return '비밀번호를 입력해주세요.';
//                     }
//
//                     if (value.length < 6) {
//                       return '비밀번호 최소 6자 이상이여야 합니다.';
//                     }
//
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   controller: _nameController,
//                   decoration: const InputDecoration(
//                     labelText: '이름',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return '이름을 입력해주세요.';
//                     }
//
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   controller: _ageController,
//                   keyboardType: TextInputType.number,
//                   decoration: const InputDecoration(
//                     labelText: '나이',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your age';
//                     }
//
//                     if (int.tryParse(value) == null) {
//                       return 'Age must be a number';
//                     }
//
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   controller: _roleController,
//                   decoration: const InputDecoration(
//                     labelText: 'Role (Parent or Child)',
//                   ),
//                   validator: (value) {
//
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
