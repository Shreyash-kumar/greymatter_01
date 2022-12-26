import 'package:flutter/material.dart';

class Question {
  final List<String> question;
  final List<TextEditingController> questionController;
  final List<String> label;
  Question({
    required this.question,
    required this.questionController,
    required this.label,
  });
}
