import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/posts_screens/create_post_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import 'comment_page.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9D,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: Padding(
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
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                          'assets/images/userP.png'),
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
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(20.0),
                                                topRight: const Radius.circular(
                                                    20.0))),
                                        context: context,
                                        builder: (builder) {
                                          return Container(
                                              height: 180,
                                              decoration: new BoxDecoration(
                                                  // color: Colors.transparent,
                                                  borderRadius:
                                                      new BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(20.0),
                                                          topRight: const Radius
                                                              .circular(20.0))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 24,
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        width: 300,
                                                        height: 35,
                                                        child: Center(
                                                          child: Text(
                                                            "Share",
                                                            style:
                                                                kManRope_400_14_001314,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      color: Colors.transparent,
                                                      width: 300,
                                                      height: 35,
                                                      child: Center(
                                                        child: Text(
                                                          "Save",
                                                          style:
                                                              kManRope_400_14_001314,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      color: Colors.transparent,
                                                      width: 300,
                                                      height: 35,
                                                      child: Center(
                                                        child: Text(
                                                          "Hide",
                                                          style:
                                                              kManRope_400_14_001314,
                                                        ),
                                                      ),
                                                    ),
                                                    /*SizedBox(
                                                      height: 24,
                                                    ),*/
                                                    GestureDetector(
                                                      onTap: () {
                                                        showModalBottomSheet(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: const Radius
                                                                            .circular(
                                                                        20.0),
                                                                    topRight: const Radius
                                                                            .circular(
                                                                        20.0))),
                                                            context: context,
                                                            builder: (builder) {
                                                              return Container(
                                                                  height: 300,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          // color: Colors.transparent,
                                                                          borderRadius: new BorderRadius.only(
                                                                              topLeft: const Radius.circular(20.0),
                                                                              topRight: const Radius.circular(20.0))),
                                                                  child: Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            34),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        /*SizedBox(
                                                                          height:
                                                                              34,
                                                                        ),*/
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "Spam ",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "False information",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "Harassment or hateful speech",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "Adult content",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "Volence or physical harm",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "Block user",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              340,
                                                                          height:
                                                                              35,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 10, left: 10),
                                                                            child:
                                                                                Text(
                                                                              "None of the reporting reasons apply",
                                                                              style: kManRope_400_14_001314,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ));
                                                            });
                                                      },
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        width: 300,
                                                        height: 35,
                                                        child: Center(
                                                          child: Text(
                                                            "Report",
                                                            style:
                                                                kManRope_400_14_001314,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    /*SizedBox(
                                                      height: 24,
                                                    ),*/
                                                  ],
                                                ),
                                              ));
                                        });
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/kebabMenu.svg',
                                    height: 24.h,
                                    width: 24.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 285.h,
                            width: 380.w,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                                                builder: (context) =>
                                                    CommentPage()));
                                      },
                                      child: SvgPicture.asset(
                                          'assets/icons/comm.svg')),
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
                                      '“There is only one way to happiness and that is to cease worrying about things which are beyond the power of our will.” ...',
                                  style: kManRope_600_14_626A6A,
                                ),
                                TextSpan(
                                    text: 'Read more',
                                    style: kManRope_400_14_006D77),
                              ],
                            ),
                          )
                          /* Text(
                            '“There is only one way to happiness and that is to cease worrying about things which are beyond the power of our will.” ...Read more',
                            style: kManRope_600_14_626A6A,
                          )*/
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return SizedBox(height: 40.h);
                  },
                  itemCount: 10),
            ),
          ),
          Positioned(
            bottom: 100.h,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CreatePostScreen()));
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
