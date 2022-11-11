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

class AppButtonTransparent extends StatefulWidget {
  final Function onTap;
  final String title;
  const AppButtonTransparent(
      {Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  State<AppButtonTransparent> createState() => _AppButtonTransparentState();
}

class _AppButtonTransparentState extends State<AppButtonTransparent> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: k006D77, width: 1),
      ),
      onPressed: () {
        widget.onTap();
      },
      child: Text(widget.title, style: kManRope_500_16_001314),
    );
  }
}

class AppButton extends StatefulWidget {
  final Function onTap;
  final String title;
  const AppButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: k006D77,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: k006D77, width: 1),
      ),
      onPressed: () {
        widget.onTap();
      },
      child: Text(widget.title, style: kManRope_500_16_white),
    );
  }
}
