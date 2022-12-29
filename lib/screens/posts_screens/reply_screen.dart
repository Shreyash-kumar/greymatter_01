import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../widgets/comment_widgets/user_comment_widget.dart';

class ReplyScreen extends StatefulWidget {
  const ReplyScreen({Key? key}) : super(key: key);

  @override
  State<ReplyScreen> createState() => _ReplyScreenState();
}

class _ReplyScreenState extends State<ReplyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          "",
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
      backgroundColor: kWhiteBGColor,
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  /*onSubmitted: (text) {
                      final message = Messages(
                          text: text, date: DateTime.now(), isSentByme: true);
                      setState(() => messages.add(message));
                    }*/
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffDBE8FA)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffDBE8FA)),
                    ),
                    //fillColor: Colors.white,
                    hintText: "Add a comment",
                    hintStyle: kManRope_400_14_626A6A,
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ImageIcon(
                                AssetImage("assets/images/photoimage.png"),
                                size: 24,
                                // color: ThemeColor.primarycolor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ImageIcon(
                                AssetImage("assets/images/imageph.png"),
                                size: 24,
                                // color: ThemeColor.primarycolor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ImageIcon(
                                AssetImage("assets/images/sendimage.png"),
                                size: 24,
                                color: k006D77,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Replies to Priya sing’s comment on this post ",
                style: kManRope_400_16_001314,
              ),
            ),
            SizedBox(
              height: 27,
            ),
            usercommentWidget1(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 121.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            child: Text(
                              "Loreprinting and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: kManRope_400_14_626A6A,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReplyScreen()));
                          },
                          child: Text(
                            "Reply",
                            style: kManRope_400_12_626A6A,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "1",
                          style: kManRope_400_12_626A6A,
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        SvgPicture.asset(
                          'assets/icons/likeIcon.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('375', style: kManRope_400_14_Black),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            usercommWidget(),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 8, bottom: 8),
                          child: Text(
                            "Loreprinting and typesetting ggyjiure industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            style: kManRope_400_14_626A6A,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            usercommWidget(),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 8, bottom: 8),
                          child: Text(
                            "Loreprinting and typesetting ggyjiure industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            style: kManRope_400_14_626A6A,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
