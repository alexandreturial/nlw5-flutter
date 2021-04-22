import 'package:nlw5/shared/models/question_model.dart';

enum Level{
  facil, 
  medio, 
  dificil, 
  perito
}

class QuizModel{
  final String title;
  final List<QuestionModel> question;
  final int questionAwnsered;
  final String image;
  final Level level;

  QuizModel({
    required this.title, 
    required this.question, 
    required this.image, 
    required this.level, 
    this.questionAwnsered = 0, 
  });

}