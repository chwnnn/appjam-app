import 'package:appjam_app/const/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final TextAlign? textAlgin;

  const CustomTextFormField({
    this.obscureText = false,
    this.autofocus = false,
    this.hintText,
    this.errorText,
    this.textAlgin,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).scaffoldBackgroundColor,
        width: 1.0,
      ),
    );

    return TextFormField(
      textAlign: TextAlign.center,
      cursorColor: Colors.blue,
      // 비밀번호 입력할 때
      obscureText: obscureText,
      autofocus: autofocus,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: YeongdeokSea.copyWith(
          color: Color(0xFFBDBAB7),
          fontSize: 24,
        ),
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        // false - 배경색 없음
        // true - 배경색 있음
        filled: true,
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
