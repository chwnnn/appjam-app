import 'package:appjam_app/const/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CalendarCommentScreen extends StatelessWidget {
  const CalendarCommentScreen({super.key});

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
                onPressed: () {},
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
