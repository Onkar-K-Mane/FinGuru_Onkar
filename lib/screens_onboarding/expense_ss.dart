import 'package:financeguru_app/screens_onboarding/budget_ss.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/widgets/buttons.dart';
import 'package:financeguru_app/widgets/texts.dart';
import 'package:financeguru_app/widgets/images.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/images/expenses_screen.png'),
        TextBottomUI(
          text: 'GET ALL YOUR EXPENSES AT ONE PLACE',
        ),
        SkipButton(
            buttonText: '>>>',
            navto: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BudgetScreen()))),
      ]),
    ));
  }
}
