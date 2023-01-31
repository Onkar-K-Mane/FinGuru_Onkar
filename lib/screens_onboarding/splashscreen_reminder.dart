import 'package:financeguru_app/widgets/images.dart';
import 'package:financeguru_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/widgets/buttons.dart';

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
