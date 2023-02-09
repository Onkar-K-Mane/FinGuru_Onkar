import 'package:financeguru_app/screens_onboarding/reminder_ss.dart';
import 'package:financeguru_app/screens_onboarding/widgets/images.dart';
import 'package:financeguru_app/screens_onboarding/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/widgets/buttons.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/images/budget_screen.png'),
        TextBottomUI(text: 'GET DETAILED REPORT ON EXPENSES'),
        SkipButton(
            buttonText: '>>>',
            navto: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ReminderScreen()))),
      ]),
    ));
  }
}
