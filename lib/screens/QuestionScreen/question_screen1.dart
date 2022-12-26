import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/colors.dart';
import '../../form/form.dart';
import '../../model/question_model.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final _pageController = PageController();
  int currentIndex = 0;

  List<Question> questionList = [
    Question(
      question: ['How do you identify Yourself?'],
      questionController: [TextEditingController()],
      label: [],
    ),
    Question(
      question: [
        'Being Honest How Would You Rate Your Physical Health?',
      ],
      questionController: [TextEditingController(), TextEditingController()],
      label: ['Excellent', 'Average', 'Poor', 'Not Sure'],
    ),
    Question(
      question: [
        'Being Honest How Would You Rate Your Mental Health?',
      ],
      questionController: [TextEditingController(), TextEditingController()],
      label: ['Excellent', 'Average', 'Poor', 'Not Sure'],
    ),
    Question(
      question: [
        'In recent time would you say face any issues with your mental health peace?'
      ],
      questionController: [TextEditingController(), TextEditingController()],
      label: ['Yes', 'No', 'Not Sure'],
    ),
    Question(
      question: [
        'Have you felt particularly low or down for more than 2 weeks in a Row?'
      ],
      questionController: [TextEditingController()],
      label: ['Very Often', 'Somewhat Often', 'Not So Often', 'Not At All'],
    ),
    Question(
      question: ['What Emotion Defines Major Part Of Your Day?'],
      questionController: [TextEditingController()],
      label: ['Calm And Peaceful', 'Energetic', 'Gloomy', 'Angry'],
    ),
    Question(
      question: ['If Asked Would You Say That You Are Happy? '],
      questionController: [TextEditingController()],
      label: ['Yes', 'No', 'Unsure'],
    ),
    Question(
      question: [
        'Have You Ever Been Diagnosed With Something That’s Related to Mental Health? '
      ],
      questionController: [TextEditingController()],
      label: ['Yes', 'No', 'Can’t Recall'],
    ),
    Question(
      question: [
        'Does Any Member Of Your Family Lineage Ever Suffered From Any Mental Health Problems?'
      ],
      questionController: [TextEditingController()],
      label: ['Yes', 'No', 'Can’t Recall'],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: kWhiteBGColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 750.h),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: [
                    /* Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Skip all",
                            style: kManRope_500_16_006D77,
                          )
                          */ /*Text(
                            '${currentIndex + 1} of 9', */ /* */ /*style: k14_4007D7878*/ /* */ /*
                          ),*/ /*
                        ],
                      ),
                    ),*/
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          SmoothPageIndicator(
                            controller: _pageController,
                            count: 10,
                            effect: WormEffect(
                              radius: 2,
                              dotWidth: 19.w,
                              dotHeight: 4.h,
                              dotColor: k006D77.withOpacity(0.36),
                              activeDotColor: k006D77,
                            ),
                          ),
                          SizedBox(
                            width: 32.w,
                          ),
                          Text(
                            "Skip all",
                            style: kManRope_500_16_006D77,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.fastOutSlowIn,
                      height: (currentIndex == 0)
                          ? 271.h
                          : (currentIndex == 1 ||
                                  currentIndex == 2 ||
                                  currentIndex == 4 ||
                                  currentIndex == 5 ||
                                  currentIndex == 6)
                              ? 405.h
                              : (currentIndex == 3 || currentIndex == 8)
                                  ? 353.h
                                  : (currentIndex == 7)
                                      ? 331.h
                                      : (currentIndex == 9)
                                          ? 375.h
                                          : 250.h,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (v) {
                          setState(() {
                            currentIndex = v;
                          });
                        },
                        children: List.generate(8, (i) {
                          return Form1(
                            index: i,
                            questions: questionList[i].question,
                            questionControllers:
                                questionList[i].questionController,
                            labels: questionList[i].label,
                            onNextTap: () {
                              if (i != 7) {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.fastOutSlowIn,
                                );
                              } else {
                                // SharedPrefs.setQuestionsLog(true);
                                /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DashBoard(),),);*/
                              }
                            },
                          );
                        }),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        // SharedPrefs.setQuestionsLog(false);
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DashBoard(),
                          ),
                        );*/
                      },
                      child: Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        child:
                            Text('Skip For Now', style: kManRope_500_16_006D77),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
