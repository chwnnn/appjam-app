import 'package:appjam_app/user/view/name_screen.dart';
import 'package:appjam_app/user/view/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
  );
}
