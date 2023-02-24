import 'package:financeguru_app/screens/account_screen.dart';
import 'package:financeguru_app/screens/bank_account_screen.dart';
import 'package:financeguru_app/screens/expenses_screen.dart';
import 'package:financeguru_app/screens/help_screen.dart';
import 'package:financeguru_app/screens/category_screen.dart';
import 'package:financeguru_app/screens/homepage.dart';
import 'package:financeguru_app/screens/menu_screen.dart';
import 'package:financeguru_app/screens/profile_screen.dart';
import 'package:financeguru_app/screens/transactions_screen.dart';
import 'package:financeguru_app/screens_onboarding/reminder_ss.dart';
import 'package:financeguru_app/widgets/bargraph.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/logo_ss.dart';
import 'package:financeguru_app/screens/reminders_screen.dart';

void main() {
  runApp(FinanceGuruApp());
}

class FinanceGuruApp extends StatelessWidget {
  const FinanceGuruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
