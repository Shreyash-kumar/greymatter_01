import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/screens/signup_screens/login_screen.dart';
import 'package:greymatter/widgets/onboarding_screen_widgets/onb_slide.dart';
import 'package:greymatter/widgets/shared/buttons/custom_text_w_icon_button.dart';

import '../../widgets/shared/buttons/costom_secondary_text_w_icon_button.dart';
import '../psychologist_screen/form_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  int _index = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      //print(_index);
      if (_index != 3) {
        _controller.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      } else {
        _controller.animateToPage(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        margin: EdgeInsets.only(top: 100.h),
        child: Column(
          children: [
            SizedBox(
              height: 530.h,
              child: PageView(
                controller: _controller,
                onPageChanged: (val) {
                  //print(_index);
                  setState(() {
                    _index = val;
                  });
                  //print(_index);
                },
                children: const [
                  OnbSlide(
                      text:
                          'Book an instant appointment with the right  Psychologists',
                      image: 'assets/images/onb1.png'),
                  OnbSlide(
                      text:
                          'Book an instant appointment with the right  Psychologists',
                      image: 'assets/images/onb2.png'),
                  OnbSlide(
                      text:
                          'Book an instant appointment with the right  Psychologists',
                      image: 'assets/images/onb3.png'),
                  OnbSlide(
                      text:
                          'Book an instant appointment with the right  Psychologists',
                      image: 'assets/images/onb4.png'),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              height: 4.h,
              decoration: BoxDecoration(
                color: k5A72ED.withOpacity(0.15),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 0 ? k5A72ED : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration: const Duration(milliseconds: 200),
                  ),
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 1 ? k5A72ED : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration: const Duration(milliseconds: 200),
                  ),
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 2 ? k5A72ED : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration: const Duration(milliseconds: 200),
                  ),
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 3 ? k5A72ED : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration: const Duration(milliseconds: 200),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            CustomTextWIconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
              },
              text: 'I am seeking help',
            ),
            SizedBox(height: 26.h),
            SizedBox(
              width: 1.sw,
              height: 56.h,
              child: CustomSecondaryButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => FormScreen()));
                },
                text: 'I am a psychologist',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
