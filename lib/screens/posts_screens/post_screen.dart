import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/posts_screens/post_page.dart';
import 'package:greymatter/screens/posts_screens/saved_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: [
        const PostPage(),
        const SavedScreen(),
      ].elementAt(_index),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Posts',
                          style: kManRope_700_16_001314,
                        ),
                        Container(
                          height: 3.h,
                          width: 60.w,
                          margin: EdgeInsets.only(top: 14),
                          color: _index == 0 ? k006D77 : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Saved',
                          style: kManRope_700_16_001314,
                        ),
                        Container(
                          height: 3.h,
                          width: 60.w,
                          margin: EdgeInsets.only(top: 14),
                          color: _index == 1 ? k006D77 : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
