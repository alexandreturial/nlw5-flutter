import 'package:flutter/material.dart';
import 'package:nlw5/Home/widgets/AppBar/app_bar.dart';
import 'package:nlw5/Home/widgets/LevelButton/level_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarWidget(screenSize),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width > 700 ? screenSize.width * 0.2 : screenSize.width * 0.08, 
          vertical: screenSize.width * 0.01
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LevelButtonWidget(label: 'Fácil'),
            LevelButtonWidget(label: 'Médio'),
            LevelButtonWidget(label: 'Difícil'),
            LevelButtonWidget(label: 'Perito'),
          ],
        ),
      ),
    );
  }
}