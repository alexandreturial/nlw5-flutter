import 'package:flutter/material.dart';
import 'package:nlw5/Challenge/widgets/QuestionIndicator/question_indicator_widget.dart';
import 'package:nlw5/Challenge/widgets/Quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: QuestionIndicatorWidget()
        ),
      ),
      body: QuizWidget(title: "Questao 1",),
    );
  }
}