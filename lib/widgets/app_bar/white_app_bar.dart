import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class WhiteCustomAppBar extends StatelessWidget  with PreferredSizeWidget{
  WhiteCustomAppBar({required this.appBarText,Key? key}) : super(key: key);
  String appBarText;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 40.w,
      backgroundColor: Colors.white,
      title: Text(
        appBarText,
        style: kManRope_500_16_006D77,
      ),
      titleSpacing: 18.w,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
