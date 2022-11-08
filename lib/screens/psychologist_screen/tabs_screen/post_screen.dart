import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../post_screen/post_page.dart';
import '../post_screen/saved_page.dart';

class PsychologistPostScreen extends StatefulWidget {
  const PsychologistPostScreen({Key? key}) : super(key: key);

  @override
  State<PsychologistPostScreen> createState() => _PsychologistPostScreenState();
}

class _PsychologistPostScreenState extends State<PsychologistPostScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: [
        const PsychologistPostPage(),
        const PsychologistSavedScreen(),
      ].elementAt(_index),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Text(
                      'Posts',
                      style: kManRope_700_16_001314,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Text(
                      'Saved',
                      style: kManRope_700_16_001314,
                    ),
                  ),
                  SizedBox(width: 1.w,),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 2.h,
                    width: 60.w,
                    color: _index==0? k006D77: Colors.white,
                  ),
                  Container(
                    height: 2.h,
                    width: 60.w,
                    color: _index==1? k006D77: Colors.white,
                  ),
                  SizedBox(width: 18.w,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
