import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/splashscreen_logo.dart';

void main() {
  runApp(FinanceGuruApp());
}

class FinanceGuruApp extends StatelessWidget {
  const FinanceGuruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
