import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

import '../explore_screens/explore_page.dart';
import '../explore_screens/my_sessions_page.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: [
        const ExplorePage(),
        const MySessionPage(),
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
                      'Explore',
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
                      'My Sessions',
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
                    width: 77.w,
                    color: _index==0? k006D77: Colors.white,
                  ),
                  Container(
                    height: 2.h,
                    width: 106.w,
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
