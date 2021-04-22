import 'package:flutter/cupertino.dart';
import 'package:nlw5/Home/home_state.dart';
import 'package:nlw5/core/app_images.dart';
import 'package:nlw5/shared/models/awnser_model.dart';
import 'package:nlw5/shared/models/question_model.dart';
import 'package:nlw5/shared/models/quiz_model.dart';
import 'package:nlw5/shared/models/user_model.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Alexandre",
      photoUrl: "https://avatars.githubusercontent.com/u/29807033?v=4",
    );
    state = HomeState.success;

  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
   
    quizzes = [
      QuizModel(
          title: "NLW 5 - Flutter",
          question: [
            QuestionModel(title: "Esta curtindo Flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adoradno"),
              AwnserModel(title: "Amando flutter curtindo"),
              AwnserModel(title: "muito Top", isRight: true),
            ])
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];

    state = HomeState.success;

  }
}
