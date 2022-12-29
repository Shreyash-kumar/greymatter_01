import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/constants/fonts.dart';

class MyPostOptionsDialog extends StatelessWidget {
  const MyPostOptionsDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        iconSize: 40,
        /*icon: ImageIcon(
          AssetImage(
            "assets/images/dots2.png",
          ),
        ),*/
        child: SvgPicture.asset(
          'assets/icons/kebabMenu.svg',
          height: 24.h,
          width: 24.w,
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              enabled: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Delete",
                          style: kManRope_500_16_626A6A,
                        )
                      ],
                    ),
                    SizedBox(height: 26),
                    Row(
                      children: [
                        Text(
                          "Report",
                          style: kManRope_500_16_626A6A,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ];
        });
  }
}

class MyPostOptionsDialog1 extends StatelessWidget {
  const MyPostOptionsDialog1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        iconSize: 40,
        /*icon: ImageIcon(
          AssetImage(
            "assets/images/dots2.png",
          ),
        ),*/
        child: SvgPicture.asset(
          'assets/icons/kebabMenu.svg',
          height: 24.h,
          width: 24.w,
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              enabled: false,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, top: 16, bottom: 16, right: 24),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Share",
                          style: kManRope_500_16_626A6A,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Save",
                          style: kManRope_500_16_626A6A,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hide",
                          style: kManRope_500_16_626A6A,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0))),
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      height: 317,
                                      decoration: new BoxDecoration(
                                          // color: Colors.transparent,
                                          borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(20.0),
                                              topRight:
                                                  const Radius.circular(20.0))),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 34,
                                            ),
                                            Text(
                                              "Spam ",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "False information",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "Harassment or hateful speech",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "Adult content",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "Volence or physical harm",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "Block user",
                                              style: kManRope_400_14_001314,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Text(
                                              "None of the reporting reasons apply",
                                              style: kManRope_400_14_001314,
                                            ),
                                          ],
                                        ),
                                      ));
                                });
                          },
                          child: Text(
                            "Report",
                            style: kManRope_500_16_626A6A,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ];
        });
  }
}
