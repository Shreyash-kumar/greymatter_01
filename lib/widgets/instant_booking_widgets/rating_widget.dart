import 'package:flutter/material.dart';

class StarRatingWidget extends StatefulWidget {
  const StarRatingWidget({Key? key}) : super(key: key);

  @override
  State<StarRatingWidget> createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;
  bool flag4 = false;
  bool flag0 = false;

  void rating(int i) {
    if (i == 4) {
      setState(() {
        flag0 = true;
        flag1 = true;
        flag2 = true;
        flag3 = true;
        flag4 = true;
      });
    } else if (i == 3) {
      setState(() {
        flag0 = true;
        flag1 = true;
        flag2 = true;
        flag3 = true;
        flag4 = false;
      });
    } else if (i == 2) {
      setState(() {
        flag0 = true;
        flag1 = true;
        flag2 = true;
        flag3 = false;
        flag4 = false;
      });
    } else if (i == 1) {
      setState(() {
        flag0 = true;
        flag1 = true;
        flag2 = false;
        flag3 = false;
        flag4 = false;
      });
    } else if (i == 0) {
      setState(() {
        if (flag0 == false) {
          flag0 = true;
          flag1 = false;
          flag2 = false;
          flag3 = false;
          flag4 = false;
        } else {
          flag0 = false;
          flag1 = false;
          flag2 = false;
          flag3 = false;
          flag4 = false;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              rating(0);
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.star,
                color: flag0 ? Color(0xFFDFBE13) : Color(0xFF626A6A),
                size: 20,
              ),
            )),
        GestureDetector(
            onTap: () {
              rating(1);
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.star,
                color: flag1 ? Color(0xFFDFBE13) : Color(0xFF626A6A),
                size: 20,
              ),
            )),
        GestureDetector(
            onTap: () {
              rating(2);
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.star,
                color: flag2 ? Color(0xFFDFBE13) : Color(0xFF626A6A),
                size: 20,
              ),
            )),
        GestureDetector(
          onTap: () {
            rating(3);
          },
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.star,
              color: flag3 ? Color(0xFFDFBE13) : Color(0xFF626A6A),
              size: 20,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            rating(4);
          },
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.star,
              color: flag4 ? Color(0xFFDFBE13) : Color(0xFF626A6A),
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
