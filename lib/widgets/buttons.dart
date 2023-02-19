import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SkipButton extends StatelessWidget {
  SkipButton({
    this.navto,
    this.buttonText,
    super.key,
  });

  VoidCallback? navto;
  String? buttonText;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      right: 0,
      child: ElevatedButton(
          onPressed: navto,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[600],
              shadowColor: Colors.deepPurple,
              elevation: 7),
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              letterSpacing: 6,
            ),
          )),
    );
  }
}

class ButtonHomePage extends StatelessWidget {
  VoidCallback? navto;

  Widget? Icon;

  ButtonHomePage({this.Icon, this.navto, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: InkResponse(
          borderRadius: BorderRadius.all(Radius.elliptical(15, 10)),
          highlightColor: Colors.amber,
          onTap: navto,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(15, 10))),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 10)),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.purpleAccent])),
                child: Icon),
          ),
        ),
      ),
    );
  }
}
