import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/name_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7BBC5C),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '부소리',
                textAlign: TextAlign.center,
                style: YeongdeokSea.copyWith(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NameScreen(),
                  ),
                );
              },
              child: Image.asset('asset/imgs/sori10.png'),
            ),
          ],
        ),
      ),
    );
  }
}
