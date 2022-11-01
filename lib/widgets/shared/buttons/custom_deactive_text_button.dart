import 'package:flutter/material.dart';

import '../../../constants/fonts.dart';

class CustomDeactiveTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const CustomDeactiveTextButton(
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
                  style: kManRope_500_16_626A6A,
                ),
              ],
            ),
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
          ),
        ),
      ],
    );
  }
}
