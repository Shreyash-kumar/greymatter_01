import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import 'comment_page.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9D,
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 54.h, right: 24.h),
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      //width: 280.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(24)),
                                child: Image.asset('assets/images/userP.png'),
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Priya singh',
                                      style: kManRope_400_16_Black),
                                  SizedBox(height: 1.h),
                                  Text('2 hours ago',
                                      style: kManRope_400_12_626A6A),
                                  SizedBox(height: 8.h),
                                ],
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/kebabMenu.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 285.h,
                      width: 380.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      child: Image.asset(
                        'assets/images/post.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/likeIcon.svg',
                              height: 24.h,
                              width: 24.w,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text('375', style: kManRope_400_14_Black),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CommentPage()));
                                },
                                child:
                                    SvgPicture.asset('assets/icons/comm.svg')),
                            SizedBox(
                              width: 12,
                            ),
                            Text('20', style: kManRope_400_14_Black),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/bookmark.svg',
                              height: 24.h,
                              width: 24.w,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            SvgPicture.asset(
                              'assets/icons/share.svg',
                              height: 24.h,
                              width: 24.w,
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '???There is only one way to happiness and that is to cease worrying about things which are beyond the power of our will.??? ...',
                            style: kManRope_600_14_626A6A,
                          ),
                          TextSpan(
                              text: 'Read more', style: kManRope_400_14_006D77),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return SizedBox(height: 40.h);
            },
            itemCount: 10),
      ),
    );
  }
}
