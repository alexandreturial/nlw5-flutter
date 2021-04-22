import 'package:flutter/material.dart';
import 'package:nlw5/Home/home_controller.dart';
import 'package:nlw5/Home/home_state.dart';
import 'package:nlw5/Home/widgets/AppBar/app_bar.dart';
import 'package:nlw5/Home/widgets/LevelButton/level_button_widget.dart';
import 'package:nlw5/Home/widgets/QuizCard/quiz_card_widget.dart';
import 'package:nlw5/core/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  
  @override
  void initState(){
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if(controller.state == HomeState.success){
      return Scaffold(
        appBar: AppBarWidget(
          screenSize: screenSize,
          user: controller.user!,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width > 700 ? screenSize.width * 0.2 : screenSize.width * 0.08, 
          vertical: screenSize.width * 0.03
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: 'Fácil'),
                LevelButtonWidget(label: 'Médio'),
                LevelButtonWidget(label: 'Difícil'),
                LevelButtonWidget(label: 'Perito'),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.015
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: controller.quizzes!.map(
                  (e) => QuizCardWidget(
                    completed: '${e.questionAwnsered} / ${e.question.length}',
                    title: e.title,
                    porcent: e.questionAwnsered/e.question.length,
                  )
                ).toList(),
                
              ),
            )
          ],
        ),
      ),
    );
    }else{
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen)
          )
        )
      );
    }
  }
}