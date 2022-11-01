import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/fonts.dart';

class MaterialTextButton extends StatelessWidget {
  const MaterialTextButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.textColor})
      : super(key: key);
  final String text;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: k006D77),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/download.svg',
            width: 18.w,
            height: 18.h,
            color: textColor,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            text,
            style: kManRope_400_16_006D77,
          ),
        ],
      ),
    );
  }
}

class MaterialTextButton006D77 extends StatelessWidget {
  const MaterialTextButton006D77(
      {Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: k006D77),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/icons/download.svg',
            width: 18.w,
            height: 18.h,
            color: Colors.white,
          ),
          Text(
            text,
            style: kManRope_400_16_white,
          ),
        ],
      ),
    );
  }
}
