import 'package:financeguru_app/account_screen.dart';
import 'package:financeguru_app/bank_account_screen.dart';
import 'package:financeguru_app/expenses_screen.dart';
import 'package:financeguru_app/help_screen.dart';
import 'package:financeguru_app/category_screen.dart';
import 'package:financeguru_app/profile_screen.dart';
import 'package:financeguru_app/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/logo_ss.dart';
import 'package:financeguru_app/reminders_screen.dart';

void main() {
  runApp(FinanceGuruApp());
}

class FinanceGuruApp extends StatelessWidget {
  const FinanceGuruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
