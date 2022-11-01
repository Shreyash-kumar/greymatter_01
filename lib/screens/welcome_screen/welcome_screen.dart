import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/tabs_screen/tabs_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              TweenAnimationBuilder(
                  duration: Duration(milliseconds: 700),
                  tween: Tween<double>(begin: 0, end: 1),
                  builder: (BuildContext context, double value, Widget? child) {
                    return Opacity(
                      opacity: value,
                      child: Padding(
                        padding: EdgeInsets.only(top: value * 30),
                        child: child,
                      ),
                    );
                  },
                  child: Text('Hi Pankaj,', style: kManRope_700_24_8A9393)),
              // SizedBox(height: 16.h),
              TweenAnimationBuilder(
                duration: Duration(seconds: 2),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (BuildContext context, double value, Widget? child) {
                  return Opacity(
                    opacity: value,
                    child: Padding(
                      padding: EdgeInsets.only(top: value * 20),
                      child: child,
                    ),
                  );
                },
                child: Text(
                  'Welcome to AtarAxis, your personal healing app',
                  style: kManRope_700_24_001314,
                ),
              ),
              SizedBox(height: 150.h),
              Center(
                child: Image.asset('assets/images/welcomegif',
                    width: 200.w, height: 200.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => TabsScreen()));
      }
    });
  }
}
