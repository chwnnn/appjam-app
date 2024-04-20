import 'package:appjam_app/main_page/memo_screen.dart';
import 'package:flutter/material.dart';

class SelectIconScreen extends StatelessWidget {
  const SelectIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              '아이콘을 골라주세요',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Yeongdeok Sea',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 70),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MemoScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'asset/imgs/sori7.png',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MemoScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'asset/imgs/sori8.png',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MemoScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'asset/imgs/sori9.png',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
