import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class NewActivityAddedScreen extends StatelessWidget {
  const NewActivityAddedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'Add new activity',
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/check-circle.png', height: 108.h, width: 108.w,),
            SizedBox(height: 8.h,),
            Text('New activity added', style: kManRope_400_14_001314,),
          ],
        ),
      ),
    );
  }
}
