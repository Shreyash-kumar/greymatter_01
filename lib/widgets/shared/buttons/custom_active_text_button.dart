import 'package:flutter/material.dart';
import 'package:greymatter/constants/colors.dart';
import '../../../constants/fonts.dart';

class CustomActiveTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const CustomActiveTextButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            height: 56,
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: kManRope_500_16_white,
                ),
              ],
            ),
            color: k006D77,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
          ),
        ),
      ],
    );
  }
}
