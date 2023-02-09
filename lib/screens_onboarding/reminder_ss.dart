import 'package:financeguru_app/screens_onboarding/widgets/images.dart';
import 'package:financeguru_app/screens_onboarding/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/widgets/buttons.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/images/payment-reminder.png'),
        TextBottomUI(
          text: 'NEVER MISS A DEADLINE',
        ),
        SkipButton(
          buttonText: '>>>',
          navto: () {},
        ),
      ]),
    ));
  }
}
