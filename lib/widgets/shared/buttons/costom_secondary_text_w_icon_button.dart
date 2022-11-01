import 'package:flutter/material.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class CustomSecondaryTextWIconButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const CustomSecondaryTextWIconButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            onPressed: () {
              onPressed();
            },
            elevation: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: kManRope_500_16_006D77,
                ),
              ],
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSecondaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const CustomSecondaryButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      elevation: 0,
      child: Text(
        text,
        style: kManRope_500_16_006D77,
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
            color: k006D77.withOpacity(0.16), width: 1), // <-- Radius
      ),
    );
  }
}
