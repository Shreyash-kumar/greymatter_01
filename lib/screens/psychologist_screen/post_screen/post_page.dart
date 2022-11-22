import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/psychologist_screen/post_screen/psychologist_create_post.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class PsychologistPostPage extends StatelessWidget {
  const PsychologistPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9D,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 54.h, right: 24.h),
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
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
                                    width: 45.w,
                                    height: 45.h,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child:
                                        Image.asset('assets/images/userP.png'),
                                  ),
                                  SizedBox(width: 8.w),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              PopupMenuButton<int>(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                icon: SvgPicture.asset(
                                  'assets/icons/kebabMenu.svg',
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                itemBuilder: (context) => [
                                  // PopupMenuItem 1
                                  PopupMenuItem(
                                    value: 1,
                                    // row with 2 children
                                    child: Text(
                                      "Share",
                                      style: kManRope_400_20_Black,
                                    ),
                                  ),
                                  // PopupMenuItem 2
                                  PopupMenuItem(
                                    value: 2,
                                    // row with two children
                                    child: Text("Save",
                                        style: kManRope_400_20_Black),
                                  ),
                                  PopupMenuItem(
                                    value: 3,
                                    // row with two children
                                    child: Text("Hide",
                                        style: kManRope_400_20_Black),
                                  ),
                                ],
                                offset: Offset(0, 100),
                                color: Colors.white,
                                elevation: 2,
                                // on selected we show the dialog box
                                onSelected: (value) {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 285.h,
                          width: 380.w,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                          child: Image.asset('assets/images/post.png'),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/likeIcon.svg',
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Text('375', style: kManRope_400_14_Black),
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
                                  width: 8.w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/share.svg',
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                style: kManRope_400_14_626A6A,
                                text:
                                    '“There is only one way to happiness and that is to cease worrying about things which are beyond the power of our will.” ...',
                              ),
                              WidgetSpan(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  color: Colors.transparent,
                                  child: Text(
                                    'Read more',
                                    style: kManRope_600_14_006D77,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return SizedBox(height: 40.h);
                },
                itemCount: 10),
          ),
          Positioned(
            bottom: 100.h,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PsychologistCreatePostScreen()));
              },
              child: SvgPicture.asset(
                'assets/icons/addPost_1.svg',
                height: 72.h,
                width: 72.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
